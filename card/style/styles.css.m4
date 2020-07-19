dnl/*
dnl ブリッジサイズ＝89mm*58mmらしい
define(`WIDTH',`58')dnl
define(`HEIGHT',`89')dnl
define(`BORDER',`2')dnl
define(`EDGE',`4')dnl
define(`PATTERN_WIDTH',eval((WIDTH-EDGE*2)/7))dnl
define(`PATTERN_HEIGHT',eval((HEIGHT-EDGE*2)/12))dnl
dnl*/
body{
  font-family: "ヒラギノ角ゴ ProN W3",
    "Hiragino Kaku Gothic ProN",
    "游ゴシック", YuGothic,
    "メイリオ", Meiryo, sans-serif;
  margin: 20px;
  color: #eee;
  background-color: #444;
  }
h1{
  font-size: 3em;
  font-weight: normal;
  margin: 0 0 0.5em 0;
  text-shadow: 1px 1px 1px #fff, -1px -1px 1px #000;
  }
div.card{
  /* display: inline-block; */
  /* margin: 20px; */
  position: absolute;
  width: eval(WIDTH)px;
  height: eval(HEIGHT)px;
  cursor: pointer;
  /* http://unitopi.com/css-user-select-none/ */
  user-select: none;
  -webkit-touch-callout: none;
  }
div.card:hover {
  transform: rotate(20deg);
  transition: all 0.1s ease-in-out;
}
div.card div{
  position: absolute;
  width: eval(WIDTH-EDGE*2)px;
  height: eval(HEIGHT-EDGE*2)px;
  font-size: 2em;
  text-align: center;
  line-height: eval(HEIGHT-EDGE*2)px;
  /*color: #000;*/
  background-color: #fff;
  border: eval(EDGE)px solid #fff;
  border-radius: 5px;
  backface-visibility: hidden;
  transition: all 0.5s ease-in-out 0s;
  box-shadow: 2px 2px 5px rgba(0,0,0,0.5);
  }
div.card div span{
  position: absolute;
  left: 0;
  top: 0;
  font-size: 10px;
  width: auto;
  line-height: 10px;
  }
div.card div.back{
  background:
    linear-gradient(30deg, transparent 50%, rgba(255,255,255,.8) 75%),
    linear-gradient(200deg, transparent 50%, rgba(255,255,255,.8) 75%),
    #36c;
  background-size: eval(PATTERN_WIDTH)px eval(PATTERN_HEIGHT)px;
  }
div.card div span:last-child{
  left: auto;
  top: auto;
  right: 0;
  bottom: 0;
  transform: rotate(180deg);
  }


div.front{
  transform: rotateY(-180deg);
  }
div.card.open div.back{
  transform: rotateY(180deg);
  }
div.card.open div.front{
  transform: rotateY(0deg);
  }


.red {
  color: red;
  }
.black {
  color: black;
  }

