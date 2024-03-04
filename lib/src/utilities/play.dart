mixin pilot {
  int astronaut = 1;
  int describeCrew() {
    print('number of crew members $astronaut');
    return astronaut;
  }
}

class Spacecraft {
  bool nuclearFueled = true;

  bool isNuclearFueled() {
    return nuclearFueled;
  }
}

class PilotedCraft extends Spacecraft with pilot {
  bool fuel = Spacecraft().isNuclearFueled();
  int crew = PilotedCraft().describeCrew();

  void println() {
    print(
        'The spacecraft is fueled using $fuel and astronuts are $crew in number');
  }
}
