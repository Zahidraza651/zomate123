//
//  Threading.swift
//  AoneCamera
//
//  Created by Sweta Surbhi on 21/09/18.
//  Copyright © 2018 Sweta Surbhi. All rights reserved.
//

import Foundation

/**
 *  Convenience methods for GCD
 */
struct Run {
    
    /**
     Run Syncronous task
     
     - parameter queue: Queue for the task to run on
     - parameter task:  the Task to be executed
     */
    static func sync(_ queue: DispatchQueue,task:() -> Void) {
        queue.sync {
            task()
        }
    }
    
    /**
     Run Asyncronous task
     
     - parameter queue: Queue for the task to run on
     - parameter task:  the Task to be executed
     */
    static func async(_ queue: DispatchQueue,task:@escaping () -> Void) {
        queue.async {
            task()
        }
    }
    
    /**
     Run Syncronous task with a Barrier
     
     - parameter queue: Queue for the task to run on
     - parameter task:  the Task to be executed
     */
    static func barrierSync(_ queue: DispatchQueue,task:() -> Void) {
        queue.sync(flags: .barrier)  {
            task()
        }
    }
    
    /**
     Run a task on the Main Thread
     
     - parameter task:  the Task to be executed
     */
    static func main(_ task:@escaping () -> Void) {
        DispatchQueue.main.async {
            task()
        }
    }
}
