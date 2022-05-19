import JishoAPI from 'unofficial-jisho-api';

const jisho = new JishoAPI();


jisho.searchForPhrase('日').then(result => {
    console.log(result);
})