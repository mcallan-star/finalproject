# Madeleine (“Mad Dog”) Callan

## Concept

### Overview
The game is a side-scrolling platformer inspired by classic *Mario* and *Sonic the Hedgehog* games, featuring coin collection, killing enemies, and progressing through levels. The core gameplay involves guiding a character through various levels, collecting coins, and overcoming obstacles while avoiding or defeating enemies. The game will have a playful, adventurous theme with a focus on enemy kills and ghost accumulation.

### Unique Mechanic
The unique ghost mechanic in this game is that when an enemy is shot down, it transforms into a ghost sprite that floats around the player, creating a haunting visual effect. These ghosts follow the player’s movement throughout the level, staying on the same layer as the avatar and enhancing the eerie atmosphere with sound effects. Accumulating ghosts contributes to the player’s score, which persists across levels. The ghosts impact gameplay directly, adding a strategic element to the game. The more ghosts you collect the more powerful you become. Different enemies will have different ghost effects(like speed, damage, etc). Their effects will be shown in the ghost sprite with a recolor and different particle effects to show the difference. When you shoot the bullet will show the ghost type that's currently active with the same color as the ghost. To change which ghost is active you can press 1,2,3,4,5,6,7,8,9,0 to change the ghost type(1-9) and 0 to remove the ghost effect. 

### Genre
- **Side-scrolling Platformer**

### Story
The protagonist embarks on a quest to reach the end of each level, defeating as many enemies as possible to accrue swirling, hovering ghosts. Each level represents a unique environment such as:
- Forest(With forest slimes that have a poison effect)
- Island(With water slimes that have a slow effect)

## Target Audience

- **Age**: All ages
- **Experience Level**: Suitable for both beginners and experienced players who enjoy classic platformer mechanics  
- **Gaming Preferences**: Fans of retro platformers, casual gamers seeking light-hearted gameplay  

## Visual Design

### Style
- **Art Style**: Colorful, cartoonish, and vibrant  
- **Character Design**: The main character has a friendly design, while enemies are slimes  

## Core Game Rules

### Controls
- **Mouse Aim**: Players use the mouse to aim the avatar’s weapon  
- **Left Mouse Button**: Fire bullets at oncoming enemies  
- **A, D / Left and Right Arrow**: Control character motion (forward, backward)  
- **Spacebar**: Jump  

### Bullets and Guns
- **Projectile Physics**: Bullets follow realistic projectile physics with an initial angle dependence. The bullets have a slight arc to them because they are affected by gravity. Different ghost effects will change the bullet physics.
- **Speed and Size**: Different ghost effects will change the bullet speed and size. Poison ones will be narrow like a dart and slow. Water ones will shoot in an arc like a water balloon and be slow. Fire ones will be fast and wide like a fireball. Ice ones will be slow and wide like a snowball.

### Enemy Types: Slime Enemies
- Requires three shots to defeat for the default bullets.

### Bullet-Enemy Interaction
- Bullets collide with enemies pushing them back slightly and showing a health bar above them. The health bar fades after a hit and the enemy flashes red. After the third hit, the enemy explodes and transforms into a ghost sprite.
- Upon impact, enemies transform into ghost sprites accompanied by sound effects to enhance player satisfaction. The ghost sprite will have a recolor and different particle effects to show the difference between the ghost types. The ghost will follow the player and have a different effect on the player. The active ghost will glow and the player will have a particle effect to show the effect of the ghost(the color)

## Scoring and Progression

- Points accumulate as enemies are killed  
- Levels flow seamlessly as players reach the exit door. The ghosts follow the player through the door and the player can see the ghosts following them in the next level. This creates a sense of progression and the snowball effect of the player getting stronger as they progress through the levels.  

## Player Survival
- Players lose hearts if touched by an enemy more than once  
- Players start with five hearts  

---

## Figures

1. **Main Menu**: Features the avatar in the game’s aesthetic  
![Main Menu](screenshots/Picture1.jpg)
1. **Gun/Ghost Mechanic**: Basic step-by-step flow of the shooting mechanism  
![Gun/Ghost Mechanic](screenshots/Picture2.jpg)
2. **Enemy Explosion**: After 3-5 shots, enemies explode and transform into ghosts  
![Enemy Explosion](screenshots/Picture3.jpg)
3. **Bullet Pickup**: Bullets are automatically collected from the ground  
![Bullet Pickup](screenshots/Picture4.jpg)
4. **Ghost Trails**: After an enemy is defeated, a ghost appears and trails the main character  
![Ghost Trails](screenshots/Picture5.jpg)
5. **Heart Loss**: Contact with enemies costs one heart; five hearts total per level  
![Heart Loss](screenshots/Picture6.jpg)
6. **Gun Aim**: Mouse controls the aim of the gun  
![Gun Aim](screenshots/Picture7.jpg)
