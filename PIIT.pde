Window[][] windows = new Window[4][8];
Ion[] ions = new Ion[32];
int screen = 0, ionIndex, randomIon = (int) random(30);

public void setup() {
  size(400, 600);
  declaringIons();
}

public void draw() {
  background(210);
  if (screen == 0) arrayLoop();
  else if (screen == 1) ionDesc();
  else theQuiz();
}

public void arrayLoop() {
  int var = 0;
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 8; j++) {
      windows[i][j] = new Window(100, 75, (i*100) - 1, (j*75) + 1, 210, ions[var].name);
      var++;
      if (windows[i][j].hoveringOver()) windows[i][j].c = 150;
      windows[i][j].draw();
    }
  }
}

public void ionDesc() {
  Ion tempIon = ions[ionIndex];
  fill(255);
  rect(50, 50, 300, 50, 25);
  rect(50, 150, 300, 50, 25);
  rect(50, 250, 300, 50, 25);
  fill(0);
  textAlign(CENTER);
  textSize(26);
  text(tempIon.name, 200, 85);
  text("Formula: "+tempIon.formula, 200, 185);
  if (tempIon.charge > 0) text("Charge: "+"+"+tempIon.charge, 200, 285);
  else text("Charge: "+tempIon.charge, 200, 285);
}

public void theQuiz() {
  Ion tempIon = ions[randomIon];
  fill(255);
  rect(50, 50, 300, 50, 25);
  rect(50, 150, 300, 50, 25);
  rect(50, 250, 300, 50, 25);
  rect(50, 350, 300, 50, 25);
  rect(50, 450, 300, 50, 25);
  fill(0);
  textAlign(CENTER);
  textSize(26);
}

public void mouseReleased() {
  if (screen == 0) {
    int var = -1;
    for (int i = 0; i < 4; i++) {
      for (int j = 0; j < 8; j++) {
        var++;
        if (windows[i][j].hoveringOver()) {
          if (var == 31) screen = 2;
          else {
            screen = 1;
            ionIndex = var;
          }
        }
      }
    }
  } else if (screen == 1) screen = 0;
  else {
  }
}


public void declaringIons() {
  ions[0] = new Ion("Dimercury", "Hg₂", 2);
  ions[1] = new Ion("Ammonium", "NH₄", 1);
  ions[2] = new Ion("Acetate", "CH₃COO", -1);
  ions[3] = new Ion("Bromate", "BrO₃", -1);
  ions[4] = new Ion("Chlorate", "ClO₃", -1);
  ions[5] = new Ion("Chlorite", "ClO₂", -1);
  ions[6] = new Ion("Cyanide", "CN", -1);
  ions[7] = new Ion("Dihydrogen Phosphate", "H₂PO₄", -1);
  ions[8] = new Ion("Hydrogen Carbonate", "HCO₃", -1);
  ions[9] = new Ion("Hydrogen Sulfate", "HSO₄", -1);
  ions[10] = new Ion("Hydroxide", "OH", -1);
  ions[11] = new Ion("Hypochlorite", "ClO", -1);
  ions[12] = new Ion("Nitrate", "NO₃", -1);
  ions[13] = new Ion("Nitrite", "NO₂", -1);
  ions[14] = new Ion("Perchlorate", "ClO₄", -1);
  ions[15] = new Ion("Permanganate", "MnO₄", -1);
  ions[16] = new Ion("Carbonate", "CO₃", -2);
  ions[17] = new Ion("Chromate", "CrO₄", -2);
  ions[18] = new Ion("Dichromate", "Cr₂O₇", -2);
  ions[19] = new Ion("Hydrogen Phosphate", "HPO₄", -2);
  ions[20] = new Ion("Oxalate", "C₂O₄", -2);
  ions[21] = new Ion("Peroxide", "O₂", -2);
  ions[22] = new Ion("Sulfate", "SO₄", -2);
  ions[23] = new Ion("Sulfite", "SO₃", -2);
  ions[24] = new Ion("Arsenate", "AsO₄", -3);
  ions[25] = new Ion("Phosphate", "PO₄", -3);
  ions[26] = new Ion("Ammonia", "NH₃", 0);
  ions[27] = new Ion("Methane", "CH₄", 0);
  ions[28] = new Ion("Water", "H₂O", 0);
  ions[29] = new Ion("Ethanol", "C₂H₅OH", 0);
  ions[30] = new Ion("Sucrose", "C₁₂H₂₂O₁₁", 0);
  ions[31] = new Ion("Test Yourself!");
}
