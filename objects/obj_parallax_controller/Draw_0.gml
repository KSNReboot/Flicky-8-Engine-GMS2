
    var CurrentNode, TileDirection, Background, xFactor, xSpeed, xScroll, xOffset, xSeparation;
    var yFactor, ySpeed, yScroll, yOffset, ySeparation, Left, Top, Width, Height, xFinal, yFinal;
// -----------------------------------------------------------------------------------------------

    // Handle parallax
    for (CurrentNode = 0; CurrentNode < NumParallaxNodes; CurrentNode += 1) {
        // Retrieve values
        TileDirection = ds_grid_get(ParallaxNodes, constParallaxTileDirection, CurrentNode);
        Background    = ds_grid_get(ParallaxNodes, constParallaxBackground,    CurrentNode);
        
        xFactor       = ds_grid_get(ParallaxNodes, constParallaxXFactor,       CurrentNode);
        xSpeed        = ds_grid_get(ParallaxNodes, constParallaxXSpeed,        CurrentNode);
        xScroll       = ds_grid_get(ParallaxNodes, constParallaxXScroll,       CurrentNode);
        xOffset       = ds_grid_get(ParallaxNodes, constParallaxXOffset,       CurrentNode);
        xSeparation   = ds_grid_get(ParallaxNodes, constParallaxXSeparation,   CurrentNode);

        yFactor       = ds_grid_get(ParallaxNodes, constParallaxYFactor,       CurrentNode);
        ySpeed        = ds_grid_get(ParallaxNodes, constParallaxYSpeed,        CurrentNode);
        yScroll       = ds_grid_get(ParallaxNodes, constParallaxYScroll,       CurrentNode);
        yOffset       = ds_grid_get(ParallaxNodes, constParallaxYOffset,       CurrentNode);
        ySeparation   = ds_grid_get(ParallaxNodes, constParallaxYSeparation,   CurrentNode);
        
        Left          = ds_grid_get(ParallaxNodes, constParallaxLeft,          CurrentNode);
        Top           = ds_grid_get(ParallaxNodes, constParallaxTop,           CurrentNode);
        Width         = ds_grid_get(ParallaxNodes, constParallaxWidth,         CurrentNode);
        Height        = ds_grid_get(ParallaxNodes, constParallaxHeight,        CurrentNode);
        
        // Calculate final position
        xFinal = floor((__view_get( e__VW.XView, view_current ))*xFactor+xOffset+xScroll);
        yFinal = floor((__view_get( e__VW.YView, view_current ))*yFactor+yOffset+yScroll);

        // Draw
        switch(TileDirection) {
            case 0:
                draw_background_part(Background, Left, Top, Width, Height, xFinal, yFinal);
                break;
            case 1:
                scr_Draw_Background_Tiled_Horizontal_Part(Background, Left, Top, Width, Height, xFinal, yFinal, xSeparation);
                break;
            case 2:
                scr_Draw_Background_Tiled_Vertical_Part(Background, Left, Top, Width, Height, xFinal, yFinal, ySeparation);
                break;
            case 3:
                scr_Draw_Background_Tiled_Part(Background, Left, Top, Width, Height, xFinal, yFinal, xSeparation, ySeparation);
                break;
        }
    }

