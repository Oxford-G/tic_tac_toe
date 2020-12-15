![](https://img.shields.io/badge/Microverse-blueviolet)

# tic_tac_toe
- A 3x3 grid game played by two users where each user takes turns in playing. The one who gets 3 consecutive cells(boxes) Wins!

## Game Play Details

![screenshot](asset/tic-tac-toe-board.png)

The game board is, as shown above, a 3x3 grid where each player takes a turn and plays.

- The game starts by prompting both players for their names.
- We assume player one always starts, then player two
- Conventional symbols are ('x') for player one and ('o') for player two

![screenshot](asset/tic-tac-toe-board2.png)

##### There are four Winning possibilities for each player:

1) If a symbol ('x' or 'o') at any given point occupies an entire row (a1:a3, or b1:b3 or c1: c3) 
2) an entire column (a1:c1 or a2:c2 or a3:c3) 
3) if the symbol occupies the leading diagonal 
4)  or if the symbol occupies the antidiagonal.

 The first player to fulfill any of the above conditions is declared **Winner!**

 ![screenshot](asset/tic-tac-toe-board3.png)

##### Draw

There is a draw (or tie) if all cells are occupied without any player meeting the above conditions.

![screenshot](asset/tic-tac-toe-board4.png)

## Game Conditions

- A cell can either be empty or owned by a player
- A **valid move** is possible only when a cell is empty.
- An **input is valid** if it is either a1,a2,a3 or b1,b2,b3 or c1, c2, c3



## Project Description

The project was implemented in the following milestones:

**Milestone 1**
This was the setup milestone where we set up the necessary files for the project. The milestone was named **project-setup**

**Milestone 2**
For this milestone, we designed our board, our 3x3 grid, and inserted randomly the symbols. The milestone was named  **user_interface**

**Milestone 3**
This is where the actual implementation takes place, all considerations and assumptions for plays are done here:

- Create game and player classes to hold the attributes and methods
- Determine players name and symbol
- Check for valid input and moves
- Create Game Flow with each player taking turns
- Declare the winner or if nobody wins, a draw

The milestone was named  **game_logic**

**Milestone 4**
The Gaming instructions were written. The milestone was named **readme_game_instruction**

## Designed With
- Ruby
- Git
- Rubocop
- VS Code
- Repl.it


## Contributing

Contributions, issues, and feature requests are welcome! Start by:

  - Forking the project
  - Cloning the project to your local machine
  - cd into the project directory
  - Run git checkout -b your-branch-name
  - Make your contributions
  - Push your branch up to your forked repository
  - Open a Pull Request with a detailed description of the development branch of the original project for a review


## Live Demo

[Live Demo Link](https://repl.it/github/Oxford-G/tic_tac_toe)

## Contributors


👤  **Enekwechi Chinonso Gerald**


- GitHub: [@OXFORD-G](https://github.com/OXFORD-G)
- Twitter: [@OXFORD2](https://twitter.com/OXFORD2)
- Linkdin: [Linkdin](www.linkedin.com/in/chinonso-enekwechi-a96954193)

## Show your support

Give a  ⭐️ if you like this project!

## 📝 License

This project is [MIT](https://choosealicense.com/licenses/mit/) licensed.
