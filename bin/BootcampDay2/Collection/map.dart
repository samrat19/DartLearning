void runMap(){

  var ranking = {};
  for(var i=0;i<3;i++){
    for(var j=0;j<3;j++){
      ranking.addAll({i:j});
    }
  }

  for(var i=0;i<ranking.length;i++){
    print(ranking[i]);
  }
}