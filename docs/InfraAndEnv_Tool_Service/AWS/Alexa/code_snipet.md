```
'use strict';

const Alexa = require('alexa-sdk');

const APP_ID = undefined;  // TODO replace with your app ID (OPTIONAL).


const handlers = {
    'LaunchRequest': function () {
        const speechOutput = 'いらっしゃいませ。Amazonコーヒーへようこそ。今日はなににしますか?';
        this.emit(':ask', speechOutput, speechOutput);
    },
    'OrderIntent': function () {
        var intent = this.event.request.intent;
        const amountSlotFilled = intent && intent.slots && intent.slots.amount && intent.slots.amount.value;

        console.log(JSON.stringify(intent));

        if (amountSlotFilled == null){
            this.emit(':tell', 'コーヒーですね、ありがとうございます。今日は天気がいいので全部100円でいいですよ。またの御利用をお待ちしております。');
        } else {
            this.attributes.amount = amountSlotFilled;
            this.emit(':tell', 'コーヒーを' + amountSlotFilled + 'つですね、ありがとうございます。今日は天気がいいので全部100円でいいですよ。またの御利用をお待ちしております。');
        }

    },
    'orderIntent': function () {
      this.emit(':tell', 'インテントの大文字、小文字が間違っていませんか? 一度設定を確認して下さい。');
    },
    'orderintent': function () {
      this.emit(':tell', 'インテントの大文字、小文字が間違っていませんか? 一度設定を確認して下さい。');
    },
    'SugarIntent': function () {
        var intent = this.event.request.intent;
        const sugarSlotFilled = intent && intent.slots && intent.slots.sugar && intent.slots.sugar.value;
        
        var msgAmount = '';
        
        if (this.attributes.amount != null){
            msgAmount = this.attributes.amount + '杯';
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
            msgAmount = this.attributes.amount + '杯';
        }
        
        this.emit(':tell', 'かしこまりました。ではコーヒー' + msgAmount + '、ご用意致します。ありがとうございました。');
    },
    'AMAZON.HelpIntent': function () {
        const speechOutput = 'コーヒーショップです。挽きたての美味しいコーヒーをお届けしています。今日は何にしますか?';
        this.emit(':ask', speechOutput, speechOutput);
    },
    'AMAZON.CancelIntent': function () {
        this.emit(':tell', 'スキルを中止します。またいつでも呼んでくださいね!');
    },
    'AMAZON.StopIntent': function () {
        this.emit(':tell', 'スキルを中止します。またいつでも呼んでくださいね!');
    },
    'AMAZON.StartOverIntent': function () {
        const speechOutput = 'いらっしゃいませ。Amazonコーヒーへようこそ。今日はなににしますか?';
        this.emit(':ask', speechOutput, speechOutput);
    },
    'Unhandled': function () {
        const speechOutput = 'インテントの設定が間違っていませんか? 一度設定を確認して下さい。';
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