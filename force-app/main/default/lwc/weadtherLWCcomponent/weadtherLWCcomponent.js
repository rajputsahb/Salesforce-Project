import { LightningElement } from 'lwc';
import getapexclass from '@salesforce/apex/WeatherhandellerController.getweatherData';
export default class WeadtherLWCcomponent extends LightningElement {
   city;
   weatherIcon;
   weatherText;

   handleCityChange(event){
    this.city=event.target.value;

   }

   getWeather(){

getapexclass({city:this.city})
.then(response=>{
let weatherParseData=JSON.parse(response);
this.weatherIcon = 'https:' + weatherParseData.current.condition.icon;
this.weatherText= weatherParseData.current.condition.text;
console.log('Weather Icon:', this.weatherIcon);
console.log(weatherParseData);
})
.catch(error=>{
    this.weatherText='No matching location or city found.';
    console.error('--error--',error);

})

   }

}