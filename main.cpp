#include <iostream>
#include <vector>
#include <SDL2/SDL.h>

int posX = 0;
int posY = 0;
std::vector<SDL_Rect> snakeParts;
std::vector<int> xPositions;
std::vector<int> yPositions;
SDL_Rect food;

SDL_Rect newFood() {
    SDL_Rect newFood;
    int randX = rand() % 620;
    int randY = rand() % 420;

    // Rounding to the nearest ten
    // To align with the snake head
    if (randX % 10 < 5) {
        randX -= randX % 10;
    } else { randX += 10 - randX % 10; }

    if (randY % 10 < 5) {
        randY -= randY % 10;
    } else { randY += 10 - randY % 10; }

    //Set new food position and size
    newFood.x = randX;
    newFood.y = randY;
    newFood.w = 10;
    newFood.h = 10;

    return newFood;
}


SDL_Rect addSnakeBit(int x, int y) {

    SDL_Rect sBit;
    sBit.x = x;
    sBit.y = y;
    sBit.w = 10;
    sBit.h = 10;
    return sBit;
}

//This function moves the positions one over
std::vector<int> moveVectors(std::vector<int> list, int addVal) {
    list.push_back(addVal);
    //removes first in list
    list.erase(list.begin());
    return list;
}

void resetGame() {
    srand(time(0));

    food = newFood();
    yPositions.clear();
    xPositions.clear();
    snakeParts.clear();
    yPositions.push_back(posY);
    xPositions.push_back((posX));
    snakeParts.push_back(addSnakeBit(posX, posY));


    yPositions.push_back(posY);
    xPositions.push_back((posX) + 10);
    snakeParts.push_back(addSnakeBit(posX + 10, posY));

    yPositions.push_back(posY);
    xPositions.push_back((posX) + 20);
    snakeParts.push_back(addSnakeBit(posX + 20, posY));
    xPositions = moveVectors(xPositions, posX);
    yPositions = moveVectors(yPositions, posY);
    xPositions = moveVectors(xPositions, posX);
    yPositions = moveVectors(yPositions, posY);


}

void Death() {
    // Uncomment this if you want a pop-up on death
    SDL_ShowSimpleMessageBox(SDL_MESSAGEBOX_WARNING, "You Lost", "You goddamn died", NULL);
    posY = 0;
    posX = 0;


}


int main() {

    enum Dir {
        LEFT,
        RIGHT,
        UP,
        DOWN
    };
    int dir = DOWN;
    bool isFirst = true;
    SDL_Window *window = nullptr;
    resetGame();
    int beginCounter = 0;
    if (SDL_Init(SDL_INIT_VIDEO) < 0) {
        std::cout << "SDL could not be initialized: " <<
                  SDL_GetError();
    }

    window = SDL_CreateWindow("C++ SDL2 Window", 20, 20, 640, 480, SDL_WINDOW_SHOWN);

    SDL_Renderer *renderer = nullptr;
    renderer = SDL_CreateRenderer(window, -1, SDL_RENDERER_ACCELERATED);


    bool gameIsRunning = true;

    // Main application loop
    while (gameIsRunning) {
        SDL_Event event;
        if (gameIsRunning) {
            //Death on hitting wall
            if (posY < 0 || posY > 470 || posX < 0 || posX > 630) {
                SDL_DestroyWindow(window);
                posY = 0;
                posX = 0;
                gameIsRunning = false;

            }
        } else {
            return 0;
        }



        // Start our event loop
        while (SDL_PollEvent(&event)) {
            // Handle each specific  Key event

            if (event.type == SDL_KEYDOWN) {
                switch (event.key.keysym.sym) {
                    case SDLK_RIGHT:
                        if (dir == LEFT) { break; }
                        dir = RIGHT;
                        break;
                    case SDLK_DOWN:
                        if (dir == UP) { break; }
                        dir = DOWN;
                        break;
                    case SDLK_UP:
                        if (dir == DOWN) { break; }
                        dir = UP;
                        break;
                    case SDLK_LEFT:
                        if (dir == RIGHT) { break; }
                        dir = LEFT;
                        break;

                    default:
                        SDL_Quit();
                        break;
                }
            }

            if (event.type == SDL_QUIT) {
                gameIsRunning = false;


            }
        }


        //Color Background
        SDL_SetRenderDrawColor(renderer, 0, 0, 0, SDL_ALPHA_OPAQUE);
        SDL_RenderClear(renderer);
        //Set the Drawing Color for the Snake
        SDL_SetRenderDrawColor(renderer, 255, 255, 255, SDL_ALPHA_OPAQUE);

        switch (dir) {
            case LEFT:
                posX -= 10;
                break;
            case RIGHT:
                posX += 10;
                break;
            case UP:
                posY -= 10;
                break;
            case DOWN:
                posY += 10;
                break;
            default:
                break;

        }


        if(beginCounter > 50) {

            for(int i = 0; i < snakeParts.size(); i++) {
                if (posX == snakeParts.at(i).x) {
                    if (posY == snakeParts.at(i).y) {
                        SDL_DestroyWindow(window);
                        posY = 0;
                        posX = 0;
                        gameIsRunning = false;
                    }
                }
            }
        }
        else{
            beginCounter++;
        }
        xPositions = moveVectors(xPositions, posX);
        yPositions = moveVectors(yPositions, posY);


        for (int i = 0; i < snakeParts.size(); i++) {

            snakeParts.at(i).x = xPositions.at(i);
            snakeParts.at(i).y = yPositions.at(i);


            SDL_RenderFillRect(renderer, &snakeParts.at(i));


        }


        //Eating food
        if (posX == food.x && posY == food.y) {

            int x = xPositions.at(xPositions.size() - 1);
            int y = yPositions.at(yPositions.size() - 1);

            snakeParts.push_back(addSnakeBit(x, y));
            xPositions.insert(xPositions.begin(), x);
            yPositions.insert(yPositions.begin(), y);

            food = newFood();
        }
        SDL_Delay(50);
       
        //Set the drawing color for the Food
        SDL_SetRenderDrawColor(renderer, 255, 0, 0, SDL_ALPHA_OPAQUE);
        SDL_RenderFillRect(renderer, &food);
        SDL_RenderPresent(renderer);
    }
    //SDL_Quit();
    return 0;
}