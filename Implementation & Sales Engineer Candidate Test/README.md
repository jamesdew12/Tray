##Implementation & Sales Engineer Candidate Test
The integration should take the data, which in this case would be in the JSON format and use the Slack Api to post these messages automatically to slack in channel depending of which country was selected in creating the opportunity . e.g. "country": "UK" then we would post in the #sales-uk channel. Furthermore we would only need to post certain data from the JSON:
Opportunity Name - Account Name
Close date - Amount
Type - Owner


Requirements - create the channels yourself so that you can place the relevant UK, US and EU teams into their respective channels it would be easier if you added salfesforce yourself alternately use channel .join for the salfeforce bot to join the channels.

here is a diagram
![tray](https://user-images.githubusercontent.com/43011172/60909790-0d551b00-a277-11e9-97a9-6fc4cdf260ca.png)



Firstly I am under the assumption the relevant channels have been created for the

Configuration enable webhooks , create the channels yourself so that you can place the relevant UK, US and EU teams into their respective channels, and once the whole thing has been set up we need to authorise web hooks for each channel so you only have to do it only once for each team/channel, or alternately use channel .join for the salfeforce bot to join the channels.
