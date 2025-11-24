
    var CurrentNode, xSpeed, xScroll, ySpeed, yScroll;
// -----------------------------------------------------------------------------------------------

    // Handle parallax
    for (CurrentNode = 0; CurrentNode < NumParallaxNodes; CurrentNode += 1) {
        // Retrieve values
        xSpeed  = ds_grid_get(ParallaxNodes, constParallaxXSpeed, CurrentNode);
        xScroll = ds_grid_get(ParallaxNodes, constParallaxXScroll, CurrentNode);
        ySpeed  = ds_grid_get(ParallaxNodes, constParallaxYSpeed, CurrentNode);
        yScroll = ds_grid_get(ParallaxNodes, constParallaxYScroll, CurrentNode);

        // Add speed values to scroll
        ds_grid_set(ParallaxNodes, constParallaxXScroll, CurrentNode, xScroll+xSpeed);
        ds_grid_set(ParallaxNodes, constParallaxYScroll, CurrentNode, yScroll+ySpeed);
    }

