///////////////////////////////////////////////////////////////////////
// Ascension : BSAREV25 
///////////////////////////////////////////////////////////////////////
// weimer: this basically prevents sarevok from bantering with non-party
// members and changes the weights so that his conversations with Player1
// come first. 
///////////////////////////////////////////////////////////////////////

ADD_STATE_TRIGGER BSAREV25 10 ~InParty("Anomen")~ // weight #4
ADD_STATE_TRIGGER BSAREV25 53 ~InParty("Jaheira")~ // weight #5
ADD_STATE_TRIGGER BSAREV25 75 ~InParty("Aerie")~ // weight #6
ADD_STATE_TRIGGER BSAREV25 94 ~InParty("Minsc")~ // weight #7

SET_WEIGHT BSAREV25 83 #-4
SET_WEIGHT BSAREV25 105 #-3
SET_WEIGHT BSAREV25 120 #-2
SET_WEIGHT BSAREV25 142 #-1

