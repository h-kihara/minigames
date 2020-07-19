
class Random {
  constructor(seed = 88675123) {
    this.x = 123456789;
    this.y = 362436069;
    this.z = 521288629;
    this.w = seed;
  }
  // XorShift
  next() {
    let t;
    t = this.x ^ (this.x << 11);
    this.x = this.y; this.y = this.z; this.z = this.w;
    return this.w = (this.w ^ (this.w >>> 19)) ^ (t ^ (t >>> 8));
  }
  nextint(min, max) {
    const r = Math.abs(this.next());
    return min + (r % (max + 1 - min));
  }
}

const random = new Random();

// 任意の配列をシャッフルする
// Fisher-Yatesアルゴリズム
// https://qiita.com/komaji504/items/62a0f8ea43053e90555a
function shuffle(array) {
  for(let i = array.length - 1; i > 0; i-- ) {
    //let r = Math.floor(Math.random() * (i + 1));
    let r = random.nextint(0, i);
    let tmp = array[i];
    array[i] = array[r];
    array[r] = tmp;
  }
}
