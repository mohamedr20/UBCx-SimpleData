
# Domain Analysis

## Step 1: Draw/Sketch Progam Scenarios

1) The cat will begin at the start of the page, at position x=0
```
##########
         #
cat      #
##########
```

2) The cat will go towards the middle of the page at position x=screen_width/2
```
##########
         #
    cat  #
##########
```
3) The cat will go to the end of the page at position x=screen_width
```
############
           #
        cat#
############
```

4) The cat will return to the start when we press the "space" key
```
##########
         #
cat      #
##########
```

## Step 2: Identify Constants 

### Constants
* WIDTH
* HEIGHT
* MOVEMENT_SPEED
* CAT_IMAGE
* CAT_Y_POSITION
* CAT_STARTING_POSITION
* BACKGROUND_SCENE

### Changing
* X-position of the cat

### Big bang options
* on-tick
* on-draw
* on-key