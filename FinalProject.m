function [] = FinalProject(~,~,~,~)
prompt = 'Enter coordinate for X '; %asking for 'x' input
x = input(prompt);
prompt = 'Enter coordinate for Y '; %asking for 'y' input
y = input(prompt);

    if x ~= y 
        fprintf('Make sure x and y are equal to one another. '); 
        FinalProject return; %returns to original question if the inputs they gave arent the same
    end
    if (x == y && (x == 0 && y == 0))
        fprintf('Plot Cleared.   '); %tells the user that the plot has been cleared
        FinalProject reset; %resets the plot when you give the input (0,0)
    end
    if (x == y && (x ~= 0 && y ~= 0))
        plot(x,y); %plots when x and y are equal to eachother and also not 0
    end
           
prompt = 'what color do you want your coordinate to be? (1)blue, (2)red, or (3)green. -->  '; %asking what color they want their plotted point to be
c = input(prompt);

    if c == 1  % when the user types in '1' it changes the color to blue
        plot(x,y,'b');
    end
    if c == 2 % when the user types in '2' it changes the color to red
        plot(x,y,'r');
    end
    if c == 3 % when the user types in '3' it changes the color to green
        plot(x,y,'g');
    end
    if (c < 1 || c > 3)
        fprintf('Your options are (1)blue, (2)red, (3)green. ')
        c = input(prompt);
    end

prompt = 'What symbol do you want to use? (1)p, (2)o,or (3)*.--> '; %asking for what color they want their plotted point to be
s = input(prompt);

    if s == 1 %when the user types in '1' it changes the symbol to dashes
        plot(x,y,'p');
    end
    if s == 2 % when the user types in '2' it changes the symbol to o's
        plot(x,y,'o');
    end
    if s == 3 % when the user types in '3' it changes the symbol to stars
        plot(x,y,'*');
    end
    if (s < 1 || s > 3)
        fprintf('Your options are (1)p, (2)o, (3)* ')
        s = input(prompt);
    end

        if (c == 1 && s == 1)% from here on down it is just a combination of all the colors and symbols that the user could pick
            plot(x,y,'bp');
            FinalProject return; % returns to the beginning prompt
        end
        if(c == 1 && s == 2)
            plot(x,y,'bo');
            FinalProject return;
        end
        if(c == 1 && s == 3)
            plot(x,y,'b*');
            FinalProject return;
        end
            if (c == 2 && s == 1)
                plot(x,y,'rp');
                FinalProject return;
            end
            if (c == 2 && s == 2)
                plot(x,y,'ro');
                FinalProject return;
            end
            if (c == 2 && s == 3)
                plot(x,y,'r*');
                FinalProject return;
            end
                if (c == 3 && s == 1)
                    plot(x,y,'gp');
                    FinalProject return;
                end
                if (c == 3 && s == 2)
                    plot(x,y,'go');
                    FinalProject return;
                end
                if (c == 3 && s == 3)
                    plot(x,y,'g*');
                    FinalProject return;
                end
 
end

