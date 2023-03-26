const puppeteer = require("puppeteer");

(async () => {
  const browser = await puppeteer.launch({
    args: ["--proxy-server=vpn-server-address:vpn-server-port"],
  });
  const page = await browser.newPage();
  // ...
})();

// Create two browser instances: To create two private networks

(async () => {
  const browser1 = await puppeteer.launch({
    args: ["--proxy-server=vpn-server1-address:vpn-server1-port"],
  });
  const page1 = await browser1.newPage();

  const browser2 = await puppeteer.launch({
    args: ["--proxy-server=vpn-server2-address:vpn-server2-port"],
  });
  const page2 = await browser2.newPage();

  // Use page1 and page2 to navigate to different websites
})();
