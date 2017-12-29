outer target = 
    inner target soFar 
        | target > 0 = inner $ target - 1 $ soFar + 1
        | target == 0 = soFar

    inner target 0