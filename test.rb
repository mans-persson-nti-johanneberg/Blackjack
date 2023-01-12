deck = ["S2", "R2", "K2", "H2", "S3", "R3", "K3", "H3","S4", "R4", "K4", "H4","S5", "R5", "K5", "H5","S6", "R6", "K6", "H6","S7", "R7", "K7", "H7","S8", "R8", "K8", "H8","S9", "R9", "K9", "H9","S1", "R1", "K1", "H1","SJ", "RJ", "KJ", "HJ","SD", "RD", "KD", "HD","SK", "RK", "KK", "HK","SA", "RA", "KA", "HA",]

deck_shuffle = deck.shuffle()

hand1 = []
hand2 = []
table = []

hand1 << deck_shuffle[1] << deck_shuffle[3]
hand2 << deck_shuffle[2] << deck_shuffle[4]
table << deck_shuffle[5] << deck_shuffle[6] << deck_shuffle[7] << deck_shuffle[8] << deck_shuffle[9]

p hand1
p hand2
p table