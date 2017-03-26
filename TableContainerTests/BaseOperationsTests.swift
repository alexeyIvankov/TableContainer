//
//  TableDataSourceTests.swift
//  TableDataSourceTests
//
//  Created by Alexey Ivankov on 14.10.16.
//  Copyright © 2016 Alexey Ivankov. All rights reserved.
//

import XCTest
@testable import TableContainer

class BaseOperationsTest: XCTestCase {
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAddSection()
    {
        let container:TableContainer = TableContainer(threadsafe:false);
        
        
        let count = 10;
        
        for index in 0..<count
        {
            let section:Section = Section(id: String(count - index), sortKey: String(count - index), type:String(count - index))
            container.add(item: section);
        }
        
    
        XCTAssertTrue(container.count() == count)
    }
    
    
    func testRemoveSection()
    {
        let count = 10;
        let container:TableContainer = TableContainer(threadsafe:false);
        
        for index in 0..<count
        {
            let section:Section = Section(id: String(index), sortKey: String(index), type:String(index))
            container.add(item: section);
        }
        
     
        for index in (0..<count).reversed()
        {
            container.remove(index: index);
        }
        
        XCTAssertTrue(container.count() == 0)
        
        
        for index in 0..<count
        {
            let section:Section = Section(id: String(index), sortKey: String(index), type:String(index))
            container.add(item: section);
        }
        
        
        for index in (0..<count).reversed()
        {
            container.remove(id: String(index));
        }
        
         XCTAssertTrue(container.count() == 0)
    }
    
    func  testForeachSection()
    {
        let container:TableContainer = TableContainer(threadsafe:false);
        
        for index in 0..<10
        {
            let section:Section = Section(id: String(index), sortKey: String(index), type:String(index))
            container.add(item: section);
        }
        
        for index in 0..<10
        {
            let section:Section? = container.item(index: index);
            XCTAssertNotNil(section);
        }
        
        
        for index in 0..<10
        {
            let section:Section? = container.item(id: String(index));
            XCTAssertNotNil(section);
        }
    }
    
    func testMultiThreading()
    {
        let container:TableContainer = TableContainer(threadsafe:true);
        
        let expectation:XCTestExpectation  = self.expectation(description: "testMultiThreading");
        

        let delay = 10 * Double(NSEC_PER_SEC)
        let time = DispatchTime.now() + Double(Int64(delay)) / Double(NSEC_PER_SEC)
        
        DispatchQueue.main.asyncAfter(deadline: time, execute: { () in
            expectation.fulfill();
        })
        
        
        for index in 0..<1000
        {
            DispatchQueue.global(priority: DispatchQueue.GlobalQueuePriority.default).async(execute: {
                
                let section:Section = Section(id: String(index), sortKey: String(index), type:String(index))
                container.add(item: section);
                
                print("section added in the thread\(Thread.current)");
                

                DispatchQueue.global(priority: DispatchQueue.GlobalQueuePriority.background).async(execute: {
                    
                    let section:Section = Section(id: String(index), sortKey: String(index), type:String(index))
                    container.add(item: section);
                    
                     print("section added in the thread\(Thread.current)");
                })
                
            })
            
            
            DispatchQueue.global(priority: DispatchQueue.GlobalQueuePriority.low).async(execute: {
                
                let section:Section = Section(id: String(index), sortKey: String(index), type:String(index))
                container.add(item: section);
                
                 print("section added in the thread\(Thread.current)");
            })
            
            
            DispatchQueue.global(priority: DispatchQueue.GlobalQueuePriority.low).async(execute: {
                
                _ = container.item(index: index)
                print("section readed in the thread\(Thread.current)");
            })
            
        }
        
        
        self.waitForExpectations(timeout: 1000) { (error) in
            print(error);
        }
        
       
    }
    
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
