const path = require('path');
const fs = require('fs');
const Controller = require('egg').Controller;

class HomeController extends Controller {
  async index() {
    const { ctx } = this;
    const html = fs.readFileSync(path.resolve(__dirname, '../public/index.html'));
    ctx.set('Content-Type', 'text/html');
    ctx.body = html;
  }
}

module.exports = HomeController;
