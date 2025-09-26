// test/test.js
const { expect } = require("chai");

describe("Sample Test Suite", function () {
  it("should return 4 when adding 2 + 2", function () {
    const result = 2 + 2;
    expect(result).to.equal(4);
  });

  it("should check that a string contains a word", function () {
    const message = "Hello CI/CD";
    expect(message).to.include("CI");
  });
});
