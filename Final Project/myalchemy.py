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
        self.params = {'apikey' : apikey, 'outputMode' : 'json', 			       'showSourceText' : 0}
    
    def get_json(self, url):
	jsonrsp = urllib2.urlopen(url)
	data = json.load(jsonrsp)
	return data

    def text_concepts(self):
        for item in self.data['concepts']: 
            print item['dbpedia']
            print item['relevance']
            print item['text']
            
    def text_category(self):
        print self.data['category']
        print self.data['language']
        print self.data['score']
        print self.data['status']
        
    def text_keywords(self):
        for item in self.data['keywords']: 
            print item['relevance']
            print item['text']
            
    def text_sentiment(self):
        print self.data['docSentiment']['mixed']
        print self.data['docSentiment']['score']
        print self.data['docSentiment']['type']
    
    def text_entities(self):
        for item in self.data['entities']:
            print item['count']
            print item['relevance']
            print item['text']
            print item['type']
            
    def look_at(self, choice):
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
        method, num = self.look_at(whichtoget)
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
            self.text_keywords()
        elif num == 2:
            self.text_category()
        elif num == 3:
            self.text_concepts()
        elif num == 4:
            self.text_sentiment()
        else:
            self.text_entities()
            

