```

'use strict';

const Alexa = require('alexa-sdk');

const APP_ID = undefined;  // TODO replace with your app ID (OPTIONAL).


const handlers = {
    'LaunchRequest': function () {
        const speechOutput = '��������Ⴂ�܂��BAmazon�R�[�q�[�ւ悤�����B�����͂Ȃɂɂ��܂���?';
        this.emit(':ask', speechOutput, speechOutput);
    },
    'OrderIntent': function () {
        var intent = this.event.request.intent;
        const amountSlotFilled = intent && intent.slots && intent.slots.amount && intent.slots.amount.value;

        console.log(JSON.stringify(intent));

        if (amountSlotFilled == null){
            this.emit(':tell', '�R�[�q�[�ł��ˁA���肪�Ƃ��������܂��B�����͓V�C�������̂őS��100�~�ł����ł���B�܂��̌䗘�p��҂����Ă���܂��B');
        } else {
            this.attributes.amount = amountSlotFilled;
            this.emit(':tell', '�R�[�q�[��' + amountSlotFilled + '�ł��ˁA���肪�Ƃ��������܂��B�����͓V�C�������̂őS��100�~�ł����ł���B�܂��̌䗘�p��҂����Ă���܂��B');
        }

    },
    'orderIntent': function () {
      this.emit(':tell', '�C���e���g�̑啶���A���������Ԉ���Ă��܂���? ��x�ݒ��m�F���ĉ������B');
    },
    'orderintent': function () {
      this.emit(':tell', '�C���e���g�̑啶���A���������Ԉ���Ă��܂���? ��x�ݒ��m�F���ĉ������B');
    },
    'SugarIntent': function () {
        var intent = this.event.request.intent;
        const sugarSlotFilled = intent && intent.slots && intent.slots.sugar && intent.slots.sugar.value;
        
        var msgAmount = '';
        
        if (this.attributes.amount != null){
            msgAmount = this.attributes.amount + '�t';
        }
        
        if (sugarSlotFilled == null){
            this.emit(':tell', '');
        } else {
            this.emit(':tell', '');
        }
    },
    'AMAZON.YesIntent': function () {
        this.emit(':ask', '');
    },
    'AMAZON.NoIntent': function () {
         var msgAmount = '';
        
        if (this.attributes.amount != null){
            msgAmount = this.attributes.amount + '�t';
        }
        
        this.emit(':tell', '�������܂�܂����B�ł̓R�[�q�[' + msgAmount + '�A���p�Ӓv���܂��B���肪�Ƃ��������܂����B');
    },
    'AMAZON.HelpIntent': function () {
        const speechOutput = '�R�[�q�[�V���b�v�ł��B�҂����Ă̔��������R�[�q�[��͂����Ă��܂��B�����͉��ɂ��܂���?';
        this.emit(':ask', speechOutput, speechOutput);
    },
    'AMAZON.CancelIntent': function () {
        this.emit(':tell', '�X�L���𒆎~���܂��B�܂����ł�Ă�ł���������!');
    },
    'AMAZON.StopIntent': function () {
        this.emit(':tell', '�X�L���𒆎~���܂��B�܂����ł�Ă�ł���������!');
    },
    'AMAZON.StartOverIntent': function () {
        const speechOutput = '��������Ⴂ�܂��BAmazon�R�[�q�[�ւ悤�����B�����͂Ȃɂɂ��܂���?';
        this.emit(':ask', speechOutput, speechOutput);
    },
    'Unhandled': function () {
        const speechOutput = '�C���e���g�̐ݒ肪�Ԉ���Ă��܂���? ��x�ݒ��m�F���ĉ������B';
        this.emit(':tell', speechOutput);
    }
};

exports.handler = function (event, context) {
    const alexa = Alexa.handler(event, context);
    alexa.APP_ID = APP_ID;
    // To enable string internationalization (i18n) features, set a resources object.
    alexa.registerHandlers(handlers);
    alexa.execute();
};

```