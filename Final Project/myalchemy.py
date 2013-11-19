'''
A class written by Jay Sayre for calling the Alchemy API
'''
import urllib
import urllib2
import json


class MyAlchemy:
    '''
    Class for calling the alchemy API
    '''
    def __init__(self, apikey):
        self.params = {'apikey' : apikey, 'outputMode' : 'json', 'showSourceText' : 0}
    
    def get_json(self, url):
	jsonrsp = urllib2.urlopen(url)
	data = json.load(jsonrsp)
	return data

    def text_concepts(self):
        returnlist = []
        for item in self.data['concepts']: 
            #This is a website with information for the text - not in our model
            #print item['dbpedia']
            returnlist.append((item['relevance'], item['text']))
        return returnlist
            
    def text_category(self):
        return self.data['category'], self.data['language'], self.data['score'], self.data['status']
        
    def text_keywords(self):
        returnlist = []
        for item in self.data['keywords']: 
            returnlist.append((item['relevance'], item['text']))
        return returnlist
            
    def text_sentiment(self):
        return self.data['docSentiment']['mixed'], self.data['docSentiment']['score'], self.data['docSentiment']['type']
    
    def text_entities(self):
        returnlist = []
        for item in self.data['entities']:
            returnlist.append((item['count'], item['relevance'], item['text'],  item['type']))
        return returnlist
            
    def __look_at(self, choice):
        if 'keywords' in choice:
            return "TextGetRankedKeywords", 1
        elif 'category' in choice:
            return "TextGetCategory", 2
        elif 'concepts' in choice:
            return "TextGetRankedConcepts", 3
        elif 'sentiment' in choice:
            return "TextGetTextSentiment", 4
        elif 'entities' in choice:
            return "TextGetRankedNamedEntities", 5
        else:
            return None
        
    
    def run_method(self, comment, whichtoget, otherparams=None):
	global alchemybase        
	self.params['text'] = comment
        form = urllib.urlencode(self.params)
        method, num = self.__look_at(whichtoget)
        if method != None:
            keywordsurl = "http://access.alchemyapi.com/calls/text/" + method + "?" + form
        else:
            print "Couldn't recognize method"
            pass
        #If there happens to be other parameters
        if otherparams != None:
            otherform = urllib.urlencode(postparams)
            keywordsurl = alchemybase + whichtoget + "?" + form + otherform 
        
        self.data = self.get_json(keywordsurl)
        
        if num == 1:
            return self.text_keywords()
        elif num == 2:
            return self.text_category()
        elif num == 3:
            return self.text_concepts()
        elif num == 4:
            return self.text_sentiment()
        else:
            return self.text_entities()
            

