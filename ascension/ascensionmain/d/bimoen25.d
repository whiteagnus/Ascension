///////////////////////////////////////////////////////////////////////
// Ascension : BIMOEN25 
///////////////////////////////////////////////////////////////////////
// Weimer: looks mostly like bugfixes to prevent Immy's banter from
// happening if the people are just standing around but not actually
// in the party. 
//
// However, states 81, 91 and 100 (which deal with her getting her Bhaal
// powers) have been given lower weights (thus, they are always checked
// first). 
///////////////////////////////////////////////////////////////////////

ADD_STATE_TRIGGER BIMOEN25 5 ~InParty("Sarevok")~ // weight 3
ADD_STATE_TRIGGER BIMOEN25 11 ~InParty("Sarevok")~ // weight 4
ADD_STATE_TRIGGER BIMOEN25 14 ~InParty("Anomen")~ // weight 5
ADD_STATE_TRIGGER BIMOEN25 23 ~InParty("Edwin")~ // weight 6
ADD_STATE_TRIGGER BIMOEN25 33 ~InParty("Minsc")~ // weight 7
ADD_STATE_TRIGGER BIMOEN25 37 ~InParty("Cernd")~ // weight 8
ADD_STATE_TRIGGER BIMOEN25 55 ~InParty("Valygar")~ // weight 9
ADD_STATE_TRIGGER BIMOEN25 63 ~InParty("Jan")~ // weight 10
ADD_STATE_TRIGGER BIMOEN25 76 ~InParty("Nalia")~ // weight 11
SET_WEIGHT BIMOEN25 81 #-3
SET_WEIGHT BIMOEN25 91 #-2
SET_WEIGHT BIMOEN25 100 #-1
