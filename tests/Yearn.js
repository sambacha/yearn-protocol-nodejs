// const { expectRevert } = require('openzeppelin-test-helpers');
// const { expect } = require('chai');

const Yearn = artifacts.require('Yearn');

contract('Yearn', function ([_, addr1]) {
    describe('Yearn', async function () {
        it('should be ok', async function () {
            this.contract = await Yearn.new();
            await this.contract.func(1);
        });
    });
});
