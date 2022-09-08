.model large
.stack 100h

.data ; first it prints the quotient and then the remainder of the average
prompt1 DB "Enter 5 number", '$'
array DB 350 DUP('0')
var Db  10
Quotient DB 0
num DB 11
XCOOR DW 0
YCOOR DW 0
JUMP DW 10

CANDY_ROWS DW 23
CANDY_COLS DW 20

CANDYHEIGHT_ROWS DW 8
CANDYHEIGHT_COLS DW 6
HeightOFCandy DW 5
SKULL_COLS DW 20
SKULL_ROWS DW 17
STONE_COLS DW 6
STONE_ROWS DW 6
CLOUD_ROWS DW 17
CLOUD_COLS DW 27
WITCH_ROWS DW 27
WITCH_COLS DW 30
GHOST1_ROWS DW 13
GHOST1_COLS DW 15
GHOST2_ROWS DW 13
GHOST2_COLS DW 15
POLE_ROWS DW 160
POLE_COLS DW  3
FLAG_ROWS DW 18
FLAG_COLS DW 26
GROOT_ROWS DW 34
GROOT_COLS DW 26
COL_No DW 0
Row_No DW 0
Ground DW 176
Remainder DB 0
Groot   DB 35,35,35,35,35,35,35,35,35,35,02,35,35,35,35,35,35,35,35,35,35,02,02,02,35,35 
        DB 35,35,35,35,35,35,35,35,35,35,02,35,35,35,35,35,35,02,35,06,35,02,02,35,35,35
	DB 35,35,35,35,02,35,35,35,35,02,02,02,35,02,35,35,35,02,02,02,35,02,02,35,35,35
	DB 35,35,35,10,02,35,06,06,10,06,02,10,10,10,10,35,35,02,02,02,02,35,02,35,35,35
	DB 35,35,10,02,10,35,06,35,10,06,02,06,10,06,10,10,10,06,10,10,10,10,10,35,35,35
	DB 35,35,02,10,10,02,06,02,10,06,10,06,06,06,06,06,06,06,06,10,10,06,02,02,35,35
	DB 35,35,02,06,06,06,02,06,06,06,06,06,06,06,06,06,06,06,06,06,10,06,10,06,35,35 ;GREEN GRASS
	DB 35,35,06,06,06,06,06,00,06,06,06,06,06,06,06,06,06,06,00,06,06,06,06,06,35,35
	DB 35,35,06,06,06,06,00,00,15,06,06,06,06,06,06,06,06,00,00,15,06,06,06,06,35,35
	DB 35,35,06,06,06,06,00,00,15,06,06,06,06,06,06,06,06,00,00,15,06,06,06,06,35,35
	DB 35,35,06,06,06,06,15,15,15,06,06,06,06,06,06,06,06,15,15,15,06,06,06,06,35,35
	DB 35,35,06,06,06,06,06,15,06,06,06,06,06,06,06,06,06,06,15,06,06,06,06,06,35,35
	DB 35,35,35,06,06,06,06,06,06,06,00,06,06,06,06,00,06,06,06,06,06,06,06,35,35,35 ;SMILE STARTS
	DB 35,35,35,35,06,06,06,06,06,06,06,00,00,00,00,06,06,06,06,06,06,06,35,35,35,35
        DB 35,35,35,35,35,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,06,35,35,35,35,35
        DB 35,35,35,35,35,35,06,06,06,06,06,06,06,06,06,06,06,06,06,06,35,35,35,35,35,35
	DB 35,35,35,35,35,35,35,06,06,06,06,06,06,06,06,06,06,06,06,35,35,35,35,35,35,35 ;17 lines

	DB 35,35,35,35,35,35,35,35,35,00,06,06,06,06,06,00,06,35,35,35,35,35,35,35,35,35
	DB 35,35,35,35,35,35,35,35,06,06,06,00,06,06,06,00,06,06,35,35,35,35,35,35,35,35
	DB 35,35,35,35,35,35,35,06,00,06,00,06,00,06,00,06,06,06,06,35,35,35,35,35,35,35
        DB 35,35,35,35,35,35,06,00,06,06,06,06,06,00,06,06,00,06,06,06,35,35,35,35,35,35
        DB 35,35,35,35,35,06,00,06,00,06,06,06,00,06,06,06,06,00,06,06,06,35,35,35,35,35
	DB 35,35,35,35,06,06,06,06,06,00,06,00,06,06,06,00,06,06,00,06,06,06,35,35,35,35
	DB 35,35,35,06,06,06,06,06,06,06,00,06,06,06,00,06,06,06,06,00,06,06,06,35,35,35
	DB 35,35,35,06,06,06,06,06,06,00,06,00,06,00,06,00,06,06,06,06,06,06,06,35,35,35
	DB 35,35,06,06,06,06,16,06,00,06,06,06,00,06,06,06,00,06,06,06,06,06,06,06,35,35
        DB 35,35,10,06,06,10,35,00,06,06,06,06,06,00,00,06,06,00,06,35,10,06,06,10,35,35
	DB 35,35,02,10,02,02,35,06,00,06,00,06,06,06,06,00,06,06,06,35,02,10,02,02,35,35
	DB 35,35,35,02,10,35,35,06,06,00,06,06,06,06,06,06,00,06,06,35,35,02,10,35,35,35 ;35

	DB 35,35,35,35,35,35,06,06,06,00,06,06,35,06,06,00,06,00,06,35,35,35,35,35,35,35
        DB 35,35,35,35,35,35,06,06,06,06,00,06,35,06,00,06,06,06,00,35,35,35,35,35,35,35
	DB 35,35,35,35,35,35,00,06,06,00,06,00,35,00,06,00,06,06,06,35,35,35,35,35,35,35
	DB 35,35,35,35,35,35,06,06,00,06,06,06,35,06,06,06,00,06,06,35,35,35,35,35,35,35
	DB 35,35,35,35,35,35,35,00,00,00,00,35,35,35,00,00,00,00,35,35,35,35,35,35,35,35 ;5

CANDY_CANE1 DB 35,35,35,35,35,35,35,40,15,40,15,15,15,40,35,35,35,35,35,35
 DB 35,35,35,35,35,15,40,40,40,15,15,15,40,40,40,15,35,35,35,35
 DB 35,35,35,35,15,40,40,40,15,15,15,40,40,40,15,15,40,35,35,35 
 DB 35,35,35,15,40,40,40,15,15,15,40,40,40,15,15,15,40,40,35,35
 DB 35,35,15,40,40,40,15,15,15,40,40,40,15,15,15,40,40,40,15,35
 DB 35,15,40,40,40,15,15,15,40,40,40,15,15,15,40,40,40,15,15,40
 DB 35,40,40,40,15,15,15,40,40,40,15,15,15,40,40,40,15,15,15,15
 DB 40,40,40,15,15,15,40,40,40,15,15,15,40,40,40,15,15,15,15,40
 DB 40,40,15,15,15,40,40,40,15,15,15,40,40,40,15,15,15,15,40,40
 DB 40,15,15,15,40,40,40,15,35,35,35,35,35,35,15,15,15,40,40,40
 DB 15,15,15,40,40,40,15,35,35,35,35,35,35,35,15,15,40,40,40,15
 DB 15,15,40,40,40,15,35,35,35,35,35,35,35,35,35,40,05,40,15,15
 DB 15,40,40,40,15,15,35,35,35,35,35,35,35,35,35,05,40,15,15,15
 DB 40,40,40,15,15,15,35,35,35,35,35,35,35,35,35,40,15,15,15,15
 DB 40,40,15,15,15,40,35,35,35,35,35,35,35,35,35,15,15,15,15,40
 DB 40,15,15,15,40,40,35,35,35,35,35,35,35,35,35,15,15,15,40,40
 DB 15,15,15,40,40,40,35,35,35,35,35,35,35,35,35,35,35,35,35,35
 DB 15,15,40,40,40,15,35,35,35,35,35,35,35,35,35,35,35,35,35,35
 DB 15,40,40,40,15,15,35,35,35,35,35,35,35,35,35,35,35,35,35,35
 DB 40,40,40,15,15,15,35,35,35,35,35,35,35,35,35,35,35,35,35,35
 DB 40,40,15,15,15,40,35,35,35,35,35,35,35,35,35,35,35,35,35,35
 DB 40,15,15,15,40,40,35,35,35,35,35,35,35,35,35,35,35,35,35,35
 DB 15,15,15,40,40,40,35,35,35,35,35,35,35,35,35,35,35,35,35,35 ;23 ROWS AND 20 COLS
 


STONE   DB 108,21,22,22,108,108
 	DB 21,20,24,27,15,108
 	DB 20,22,22,25,27,22
 	DB 20,27,22,23,20,108
 	DB 108,20,21,20,108,108
 	DB 108,108,20,20,108,108 ;6*6	
CLOUD  DB  35,35,35,35,35,00,00,00,00,00,35,35,35,00,00,35,35,35,35,35,35,35,35,35,35,35,35 
        DB 35,35,35,35,00,52,52,52,00,35,35,35,00,52,00,35,00,00,35,35,35,00,00,00,35,35,35
	DB 35,35,35,00,52,52,52,52,52,00,00,00,53,52,52,00,52,52,00,35,00,52,52,52,00,35,35
	DB 35,35,00,53,52,15,15,52,51,52,52,53,53,52,52,52,57,57,52,00,52,57,52,15,57,00,35
	DB 35,35,00,53,52,15,15,52,57,51,51,57,57,57,57,57,52,57,57,52,57,57,15,52,15,53,00
	DB 00,00,53,53,53,51,52,51,51,57,57,51,57,52,52,52,52,57,57,57,57,57,57,57,57,57,00
	DB 00,53,53,53,53,52,52,51,57,57,57,57,57,52,52,57,52,57,57,57,15,15,57,57,57,57,00 
	DB 00,53,53,53,53,51,57,51,51,57,51,57,52,52,52,57,57,57,57,57,57,57,57,57,57,57,00
	DB 00,53,53,53,52,52,57,51,51,51,51,51,51,52,52,57,57,52,57,57,57,57,57,57,57,57,00
	DB 00,53,53,53,52,52,15,57,57,51,57,51,51,51,57,57,57,52,52,57,15,57,57,57,57,57,00
	DB 35,00,53,53,52,15,15,51,51,57,57,51,51,57,57,57,57,57,57,57,15,15,57,57,53,00,35
	DB 35,00,53,53,53,53,15,51,57,57,57,57,57,57,57,57,57,57,57,57,57,57,57,53,00,35,35
	DB 35,35,00,53,53,53,53,51,57,57,57,57,57,57,50,50,57,57,57,57,57,57,57,00,35,35,35 
	DB 35,35,35,00,53,53,53,57,57,52,00,00,57,57,50,57,57,00,00,00,00,00,00,00,35,35,35
        DB 35,35,35,35,00,52,53,51,52,00,35,35,00,57,57,57,00,35,35,35,35,35,35,35,35,35,35
        DB 35,35,35,35,00,52,53,52,00,35,35,35,35,00,00,00,35,35,35,35,35,35,35,35,35,35,35
	DB 35,35,35,35,35,00,00,00,00,35,35,35,35,35,35,35,35,35,35,35,35,35,35,35,35,35,35 
CANDYCANE_HEIGHT DB 15,15,15,40,40,40
 		 DB 15,15,40,40,40,15
 		 DB 15,40,40,40,15,15
 		 DB 40,40,40,15,15,15
 		 DB 40,40,15,15,15,40
 		 DB 40,15,15,15,40,40
 		 DB 15,15,15,40,40,40
		 DB 15,15,40,40,40,15	;8*6
                        
SKULL   DB 108,108,108,108,108,00,00,00,00,00,00,00,00,00,108,108,108,108,108,108
	DB 108,108,108,108,00,15,15,15,15,15,00,00,00,15,00,108,108,108,108,108
	DB 108,108,108,00,15,15,15,15,15,15,15,15,15,15,15,00,108,108,108,108
        DB 108,108,00,15,15,15,15,15,15,15,15,15,15,15,15,15,00,108,108,108
        DB 108,00,15,15,00,00,00,00,15,15,15,00,00,00,00,15,15,00,108,108
	DB 108,00,00,00,00,15,15,00,00,00,00,00,15,15,00,00,00,00,108,108
	DB 108,00,15,15,00,00,00,00,15,15,15,00,00,00,00,15,15,00,108,108
	DB 108,00,15,15,00,00,00,00,15,15,15,00,00,00,00,15,15,00,108,108
	DB 108,00,15,15,15,15,15,15,15,00,15,15,15,15,15,00,15,00,108,108
        DB 108,00,15,00,15,15,15,15,15,00,00,15,15,15,00,15,15,00,108,108
	DB 108,108,00,15,00,15,15,15,00,00,00,15,15,15,15,15,00,108,108,108
	DB 108,108,108,00,15,15,15,15,15,00,15,15,15,15,15,00,108,108,108,108
	DB 108,108,108,108,00,15,15,15,15,15,15,15,15,15,00,108,108,108,108,108
        DB 108,108,108,108,00,00,00,00,00,00,00,00,00,00,108,108,108,108,108,108
	DB 108,108,108,108,00,15,00,15,00,15,00,15,15,00,108,108,108,108,108,108
	DB 108,108,108,108,00,00,15,00,15,00,15,00,15,00,108,108,108,108,108,108
	DB 108,108,108,108,108,00,00,00,00,00,00,00,00,108,108,108,108,108,108,108 ;17*20


WITCH DB 35,35,35,35,35,35,35,35,35,35,35,35,35,35,0,0,35,35,35,35,35,35,35,35,35,35,35,35,35,35
DB 35,35,35,35,35,35,35,35,35,35,35,35,35,0,0,0,35,35,35,35,35,35,35,35,35,35,35,35,35,35
DB 35,35,35,35,35,35,35,35,35,35,35,35,0,0,0,35,35,35,35,35,35,35,35,35,35,35,35,35,35,35
DB 35,35,35,35,35,35,35,35,35,35,35,0,0,0,0,35,35,35,35,35,35,35,35,35,35,35,35,35,35,35
DB 35,35,35,35,35,35,35,35,35,35,0,0,0,0,0,35,35,35,35,35,35,35,35,35,35,35,35,35,35,35
DB 35,35,35,35,35,35,35,35,35,35,0,0,0,0,0,0,35,35,35,35,35,35,35,35,35,35,35,35,35,35 
DB 35,35,35,35,35,35,35,35,35,35,0,0,0,0,0,0,0,0,35,35,35,35,35,35,35,35,35,35,35,35
DB 35,35,35,35,35,35,35,35,35,0,0,0,0,0,0,6,6,35,35,35,35,35,35,35,35,35,35,35,35,35

DB 35,35,35,35,35,35,35,0,0,0,0,7,0,7,6,6,6,6,6,35,35,35,35,35,35,35,35,35,35,35
DB 35,35,35,35,35,35,35,0,0,35,35,7,7,7,7,6,6,6,6,6,6,35,35,35,35,35,35,35,35,35
DB 35,35,35,35,35,35,35,35,35,35,35,35,4,7,7,6,6,6,6,6,6,6,35,35,35,35,35,35,35,35

DB 35,35,35,35,35,35,35,35,35,35,35,35,7,7,0,0,6,6,6,35,35,35,35,35,35,35,35,35,35,35
DB 35,35,35,35,35,35,35,35,35,35,35,35,35,0,0,0,0,35,35,35,35,35,35,35,35,35,35,35,35,35
DB 35,35,35,35,35,35,35,35,35,35,35,35,0,0,0,0,0,0,35,35,35,35,35,35,35,35,35,35,35,35
DB 35,35,35,35,35,35,35,35,35,35,35,0,0,35,35,0,0,0,0,35,35,35,35,35,35,35,35,35,35,35
DB 35,35,35,35,35,35,35,35,35,35,35,0,0,35,35,0,0,0,0,35,35,35,35,35,35,35,35,6,7,6
DB 35,35,35,35,35,35,35,35,35,35,35,7,35,35,0,0,0,0,0,35,35,35,35,35,35,35,7,6,35,35
DB 35,35,35,35,35,35,35,35,35,35,7,7,35,0,0,0,0,0,0,35,35,35,35,35,7,6,7,6,7,6

DB 35,35,8,8,8,8,8,8,8,8,8,8,0,0,0,0,0,0,0,8,8,8,8,6,7,6,7,6,35,35 ;13

DB 35,35,35,35,35,35,35,35,35,35,35,35,0,0,0,0,0,0,0,0,35,35,35,35,7,6,7,6,7,6
DB 35,35,35,35,35,35,35,35,35,35,35,35,0,0,0,0,0,0,0,0,35,35,35,35,35,35,7,6,35,35
DB 35,35,35,35,35,35,35,35,35,35,35,35,35,0,0,0,0,0,0,0,0,35,35,35,35,35,35,6,7,6
DB 35,35,35,35,35,35,35,35,35,35,35,35,35,35,0,0,0,0,0,0,0,0,35,35,35,35,35,35,35,35,35,35
DB 35,35,35,35,35,35,35,35,35,35,35,35,35,35,35,7,35,7,35,35,35,35,35,35,35,35,35,35,35,35,35
DB 35,35,35,35,35,35,35,35,35,35,35,35,35,35,35,0,35,0,35,35,35,35,35,35,35,35,35,35,35,35,35
DB 35,35,35,35,35,35,35,35,35,35,35,35,35,0,0,0,0,0,35,35,35,35,35,35,35,35,35,35,35,35,35
DB 35,35,35,35,35,35,35,35,35,35,35,0,0,0,0,0,0,35,35,35,35,35,35,35,35,35,35,35,35,35,35

GHOST1 DB 35,35,35,35,15,15,15,15,15,15,15,35,35,35,35
DB 35,35,35,35,15,15,15,15,15,15,15,35,35,35,35

DB 35,35,35,15,15,15,15,15,15,15,15,15,35,35,35
DB 35,35,35,15,15,0,15,15,15,0,15,15,35,35,35	;eyes

DB 35,35,35,15,15,15,15,15,15,15,15,15,35,35,35
DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15

DB 15,15,15,15,15,0,0,0,0,0,15,15,15,15,15
DB 15,15,15,15,15,0,0,0,0,0,15,15,15,15,15

DB 35,35,15,15,15,15,15,15,15,15,15,15,15,35,35
DB 35,35,15,15,15,15,15,15,15,15,15,15,15,35,35
DB 35,35,15,15,15,15,15,15,15,15,15,15,15,35,35
DB 35,35,15,15,35,35,15,15,15,35,35,15,15,35,35
DB 35,35,15,15,35,35,15,15,15,35,35,15,15,35,35


GHOST2 DB 35,35,35,35,15,15,15,15,15,15,15,35,35,35,35
DB 35,35,35,35,15,15,15,15,15,15,15,35,35,35,35

DB 35,35,35,15,15,15,15,15,15,15,15,15,35,35,35
DB 35,35,35,15,15,0,15,15,15,0,15,15,35,35,35

DB 35,35,35,15,15,15,15,15,15,15,15,15,35,35,35
DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15

DB 15,15,15,15,0,0,0,0,0,0,0,15,15,15,15
DB 15,15,15,15,15,15,15,15,15,15,15,15,15,15,15

DB 35,35,15,15,15,15,15,15,15,15,15,15,15,35,35
DB 35,35,15,15,15,15,15,15,15,15,15,15,15,35,35
DB 35,35,15,15,15,15,15,15,15,15,15,15,15,35,35
DB 35,35,15,15,35,35,15,15,15,35,35,15,15,35,35
DB 35,35,15,15,35,35,15,15,15,35,35,15,15,35,35

SPIDER_FLAG DB 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
DB 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12

DB 12,12,12,0,0,0,0,12,12,12,12,12,12,12,12,12,12,12,12,0,0,0,0,12,12,12
DB 12,12,12,0,0,0,0,12,12,12,12,12,12,12,12,12,12,12,12,0,0,0,0,12,12,12
DB 12,0,0,12,12,12,12,0,0,12,0,0,0,0,0,0,12,0,0,12,12,12,12,0,0,12
DB 12,0,0,12,12,12,12,0,0,12,0,0,0,0,0,0,12,0,0,12,12,12,12,0,0,12

DB 12,12,12,12,12,12,12,12,12,0,0,0,0,0,0,0,0,12,12,12,12,12,12,12,12,12
DB 12,12,12,12,12,12,12,12,12,0,0,0,0,0,0,0,0,12,12,12,12,12,12,12,12,12

DB 12,12,12,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,12,12,12
DB 12,12,12,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,12,12,12,12

DB 12,12,0,0,12,12,12,12,12,0,0,0,0,0,0,0,0,12,12,12,12,12,0,0,12,12
DB 12,12,0,0,12,12,12,12,12,0,0,0,0,0,0,0,0,12,12,12,12,12,0,0,12,12

DB 12,12,12,12,12,12,0,0,0,0,0,15,0,0,15,0,0,0,0,0,12,12,12,12,12,12
DB 12,12,12,12,12,12,0,0,0,0,0,15,0,0,15,0,0,0,0,0,12,12,12,12,12,12

DB 12,12,12,12,0,0,12,12,12,0,0,0,0,0,0,0,0,12,12,12,0,0,12,12,12,12
DB 12,12,12,12,0,0,12,12,12,0,0,0,0,0,0,0,0,12,12,12,0,0,12,12,12,12

DB 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12
DB 12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12,12

POLE DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7
DB 8,8,8,8
DB 7,7,7,7

.code

MAIN PROC

mov ax,@data 
mov ds,ax;to move the data within the code


mymacro macro p1,p2,p3
  
        mov ah,0Ch
        mov cx, p1   ;COL
	mov dx, p2  ;ROW
        mov al, p3  ;PIXEL COLOUR  
	INT 10h
 endm
mov ah,0H ;SETTING VIDEO MODE
mov al,13h ;choose Type of Video mode  25x40. 256 colors. 200*320 pixels
int 10h

  

    mov ah, 06h  		;For scroll Mode
    mov al, 0 			;Define the row from which the colouring starts ,however dont change other than zero,destroys screen
    mov cl,0		        ;CL left coloumn number
    mov ch,0  			;CH= upper row number 
    mov dl,40		        ;DL Right coloumn number
    mov dh,25			;DH= lower row number
    mov bh,35	;for colour
    int 10h

mov YCOOR,0
MOV XCOOR,0
call Draw_ForeGround



mov YCOOR,5
mov XCOOR,150

call Draw_WITCH

mov YCOOR,163
mov XCOOR,170

call Draw_GHOST1

mov YCOOR,163
mov XCOOR,90

call Draw_GHOST2

mov YCOOR,10
mov XCOOR,288

call Draw_FLAG

mov ax,GROUND
sub ax,GROOT_ROWS
mov YCOOR,ax
mov XCOOR,20


call Draw_Groot

game:
push YCOOR
push XCOOR
;call delay
;mov ah,0H ;SETTING VIDEO MODE
;mov al,13h ;choose Type of Video mode  25x40. 256 colors. 200*320 pixels
;int 10h
comment!
  

    mov ah, 06h  		;For scroll Mode
    mov al, 0 			;Define the row from which the colouring starts ,however dont change other than zero,destroys screen
    mov cl,0		        ;CL left coloumn number
    mov ch,0  			;CH= upper row number 
    mov dl,40		        ;DL Right coloumn number
    mov dh,25			;DH= lower row number
    mov bh,35	;for colour
    int 10h
 
mov YCOOR,0
MOV XCOOR,0
call Draw_ForeGround



mov YCOOR,5
mov XCOOR,150

call Draw_WITCH

mov YCOOR,163
mov XCOOR,170

call Draw_GHOST1

mov YCOOR,163
mov XCOOR,90

call Draw_GHOST2

mov YCOOR,10
mov XCOOR,288

call Draw_FLAG

!
pop XCOOR
pop yCOOR
comment!..............Key Press...............................!
call Timer

mov ah,0
INT 16h

CMP aH,4Bh
JE left
CMP aH,4Dh
JE right
CMP aH,48h
JE UP
CMP ah,01h
JE exit
JMP Draw

left:
SUB XCOOR,1
JMP draw

right:
add XCOOR,1
JMP draw


Up:
;mov dx,JUMP
sub YCOOR,1
JMP draw

Draw:
call Draw_GROOT

JMP game





exit:
mov ah,04ch
int 21h
ret
MAIN ENDP
COMMENT!..........................................DRAW_GROOT..................................................!
Draw_GROOT PROC
push ax
push bx
push cx
push dx
push si


mov ax,YCOOR
mov Row_No,ax
mov ax,0
mov ax,XCOOR

mov cx,GROOT_ROWS 
mov si,0


	l2:
	push cx
	mov cx,GROOT_COLS
	mov col_No,ax
	mov bx,0
		 l1:
		push cx
                push ax
 		mymacro COL_No,Row_No,GROOT[si+bx]
        	inc COL_NO
        	inc bx
                pop ax
		pop cx
		loop l1
	add si,GROOT_COLS
	inc row_no
	pop cx
	loop l2
pop si
pop dx
pop cx
pop bx
pop ax
ret
Draw_GROOT ENDP

COMMENT!..........................................DRAW_FOREGROUND..................................................!
Draw_ForeGround PROC
push XCOOR
Push YCOOR
push ax
push bx
push cx
push dx
push si

   mov ah, 06h  		;For scroll Mode
    mov al, 0 			;Define the row from which the colouring starts ,however dont change other than zero,destroys screen
    mov cl,0		        ;CL left coloumn number
    mov ch,22  			;CH= upper row number 
    mov dl,40		        ;DL Right coloumn number
    mov dh,25			;DH= lower row number
    mov bh,108         ;DARK PURPLE
    int 10h


mov YCOOR,180
mov XCOOR,20
call Draw_STONE

mov YCOOR,190
mov XCOOR,40
call Draw_STONE

mov YCOOR,192
mov XCOOR,44
call Draw_STONE

mov YCOOR,176
mov XCOOR,90
call Draw_STONE

mov YCOOR,192
mov XCOOR,120
call Draw_STONE
  
mov YCOOR,192
mov XCOOR,122
call Draw_STONE

mov YCOOR,192
mov XCOOR,180
call Draw_STONE
  
mov YCOOR,180
mov XCOOR,200
call Draw_STONE

mov YCOOR,180
mov XCOOR,250
call Draw_STONE

mov YCOOR,180
mov XCOOR,257
call Draw_STONE

mov YCOOR,192
mov XCOOR,290
call Draw_STONE
  
mov YCOOR,180
mov XCOOR,300
call Draw_STONE


;;STARTCLOUD
mov YCOOR,50
mov XCOOR,20
call Draw_CLOUD

;;MID CLOUD
mov YCOOR,30
mov XCOOR,120
call Draw_CLOUD

mov YCOOR,40
mov XCOOR,127
call Draw_CLOUD

;;END CLOUD
mov YCOOR,30
mov XCOOR,300
call Draw_CLOUD

mov YCOOR,60
mov XCOOR,200
call Draw_CLOUD

mov XCOOR,60
mov YCOOR,153
mov HeightofCandy,1
call Draw_CANDYCANE

mov XCOOR,140
mov YCOOR,113
mov HeightofCandy,6
call Draw_CANDYCANE

mov XCOOR,220
mov YCOOR,137
mov HeightofCandy,3
call Draw_CANDYCANE


mov XCOOR,54 ; 5 minus the x coordinate of the candy canes
MOV YCOOR,176
call Draw_SKUlL

mov XCOOR,134
MOV YCOOR,176
call Draw_SKUlL

mov XCOOR,214
MOV YCOOR,176
call Draw_SKUlL

  
  
pop si
pop dx
pop cx
pop bx
pop ax
pop YCOOR
pop XCOOR
ret
Draw_ForeGround ENDP
COMMENT!..........................................   DRAW_GHOST1  ..................................................!
Draw_GHOST1 PROC
push ax
push bx
push cx
push dx
push si

mov ax,YCOOR
mov Row_No,ax
mov ax,0
mov ax,XCOOR

mov cx,GHOST1_ROWS 
mov si,0


	l2:
	push cx
	mov cx,GHOST1_COLS
	mov col_No,ax
	mov bx,0
		 l1:
		push cx
                push ax
 		mymacro COL_No,Row_No,GHOST1[si+bx]
        	inc COL_NO
        	inc bx
                pop ax
		pop cx
		loop l1
	add si,GHOST1_COLS
	inc row_no
	pop cx
	loop l2
pop si
pop dx
pop cx
pop bx
pop ax
ret
Draw_GHOST1 ENDP
COMMENT!..........................................   DRAW_GHOST2 ..................................................!
Draw_GHOST2 PROC
push ax
push bx
push cx
push dx
push si

mov ax,YCOOR
mov Row_No,ax
mov ax,0
mov ax,XCOOR

mov cx,GHOST2_ROWS 
mov si,0


	l2:
	push cx
	mov cx,GHOST2_COLS
	mov col_No,ax
	mov bx,0
		 l1:
		push cx
                push ax
 		mymacro COL_No,Row_No,GHOST2[si+bx]
        	inc COL_NO
        	inc bx
                pop ax
		pop cx
		loop l1
	add si,GHOST2_COLS
	inc row_no
	pop cx
	loop l2
pop si
pop dx
pop cx
pop bx
pop ax
ret
Draw_GHOST2 ENDP
COMMENT!..........................................   DRAW_WITCH  ..................................................!
Draw_WITCH PROC

mov ax,YCOOR
mov Row_No,ax
mov ax,0
mov ax,XCOOR

mov cx,WITCH_ROWS 
mov si,0


	l2:
	push cx
	mov cx,WITCH_COLS
	mov col_No,ax
	mov bx,0
		 l1:
		push cx
                push ax
 		mymacro COL_No,Row_No,WITCH[si+bx]
        	inc COL_NO
        	inc bx
                pop ax
		pop cx
		loop l1
	add si,WITCH_COLS
	inc row_no
	pop cx
	loop l2


RET
Draw_WITCH ENDP
COMMENT!..........................................   DRAW_FLAG  ..................................................!
Draw_FLAG PROC
push ax
push bx
push cx
push dx
push si

mov ax,YCOOR
mov Row_No,ax
mov ax,0
mov ax,XCOOR

mov cx,FLAG_ROWS 
mov si,0


	l2:
	push cx
	mov cx,FLAG_COLS
	mov col_No,ax
	mov bx,0
		 l1:
		push cx
                push ax
 		mymacro COL_No,Row_No,SPIDER_FLAG[si+bx]
        	inc COL_NO
        	inc bx
                pop ax
		pop cx
		loop l1
	add si,FLAG_COLS
	inc row_no
	pop cx
	loop l2

mov cx,POLE_ROWS 
mov si,0
mov ax,POLE_COLS
sub col_no,ax
mov ax,col_no

	l3:
	push cx
	mov cx,POLE_COLS
	mov col_No,ax
	mov bx,0
		 l4:
		push cx
                push ax
 		mymacro COL_No,Row_No,POLE[si+bx]
        	inc COL_NO
        	inc bx
                pop ax
		pop cx
		loop l4
	add si,POLE_COLS
	inc row_no
	pop cx
	loop l3

pop si
pop dx
pop cx
pop bx
pop ax

RET
Draw_FLAG ENDP
COMMENT!..........................................   DRAW_CLOUD  ..................................................!
Draw_CLOUD PROC
push ax
push bx
push cx
push dx
push si

mov ax,YCOOR
mov Row_No,ax
mov ax,0
mov ax,XCOOR

mov cx,CLOUD_ROWS 
mov si,0


	l2:
	push cx
	mov cx,CLOUD_COLS
	mov col_No,ax
	mov bx,0
		 l1:
		push cx
                push ax
 		mymacro COL_No,Row_No,CLOUD[si+bx]
        	inc COL_NO
        	inc bx
                pop ax
		pop cx
		loop l1
	add si,CLOUD_COLS
	inc row_no
	pop cx
	loop l2

pop si
pop dx
pop cx
pop bx
pop ax

RET
Draw_CLOUD ENDP
COMMENT!..........................................   DRAW_STONE  ..................................................!
Draw_STONE PROC
push ax
push bx
push cx
push dx
push si

mov ax,YCOOR
mov Row_No,ax
mov ax,0
mov ax,XCOOR

mov cx,STONE_ROWS 
mov si,0


	l2:
	push cx
	mov cx,STONE_COLS 
	mov col_No,ax
	mov bx,0
		 l1:
		push cx
                push ax
 		mymacro COL_No,Row_No,STONE[si+bx]
        	inc COL_NO
        	inc bx
                pop ax
		pop cx
		loop l1
	add si,STONE_COLS
	inc row_no
	pop cx
	loop l2

pop si
pop dx
pop cx
pop bx
pop ax
ret
Draw_STONE ENDP
COMMENT!..........................................DRAW_SKULL..................................................!
Draw_SKULL PROC
push ax
push bx
push cx
push dx
push si

mov ax,YCOOR
mov Row_No,ax
mov ax,0
mov ax,XCOOR

mov cx,SKULL_ROWS 
mov si,0


	l2:
	push cx
	mov cx,SKULL_COLS 
	mov col_No,ax
	mov bx,0
		 l1:
		push cx
                push ax
 		mymacro COL_No,Row_No,SKULL[si+bx]
        	inc COL_NO
        	inc bx
                pop ax
		pop cx
		loop l1
	add si,SKULL_COLS
	inc row_no
	pop cx
	loop l2
pop si
pop dx
pop cx
pop bx
pop ax
RET
Draw_SKULL ENDP
COMMENT!..........................................DRAW_CANDYCANE................................................!
Draw_CANDYCANE PROC 
push ax
push bx
push cx
push dx
push si

;;CANDY CANE HEAD
mov cx,CANDY_ROWS
mov si,0

mov ax,YCOOR
mov Row_No,ax
mov ax,0
mov ax,XCOOR

	l3:
	push cx
	mov cx,CANDY_COLS
	mov col_No,ax
	mov bx,0
		 l4:
			push cx
                        push ax
 			mymacro COL_No,Row_No,CANDY_CANE1[si+bx]
        		inc COL_NO
        		inc bx
                        pop ax
			pop cx
		loop l4

	add si,CANDY_COLS
	inc row_no
	pop cx
	loop l3

;;CANDY CANE 

mov col_No,ax
;mov ROW_No,82
;mov Xcoor,150
mov si,0
mov bx,0
mov cx,HeightOFCandy
l7:
push cx
mov cx,CANDYHEIGHT_ROWS 
mov col_No,60
mov si,0
mov bx,0

	l5:
	push cx
	mov cx,6
	mov col_No,ax
	mov bx,0
		 l6:
		push cx
                push ax
 		mymacro COL_No,Row_No,CANDYCANE_HEIGHT[si+bx]
        	inc COL_NO
        	inc bx
                pop ax
		pop cx
		loop l6
	add si,CANDYHEIGHT_COLS
	inc row_no
	pop cx
	loop l5
;inc ROW_No
pop cx
loop l7


pop si
pop dx
pop cx
pop bx
pop ax

ret
Draw_CANDYCANE endp
COMMENT!..........................................TIMER PROC..................................................!
TIMER PROC


push ax
push bx
push cx
push dx


mov ah,86h
mov cx,00
mov dx,4240h
int 15h


pop dx
pop cx
pop bx
pop ax
RET  
TIMER ENDP
COMMENT!..........................................DELAY PROC..................................................!
delay proc


push ax
push bx
push cx
push dx



mov cx,1000
mydelay:
mov bx,100  ;; increase this number if you want to add more delay, and decrease this number if you want to reduce delay.
mydelay1:
dec bx
jnz mydelay1
loop mydelay


pop dx
pop cx
pop bx
pop ax

ret

delay endp
END main

