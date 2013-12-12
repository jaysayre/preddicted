'''
A class written for calling the Alchemy API
Jay Sayre - Harvard College - CS109 Final Project - 11/17/13
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
        return self.data['docSentiment']['score'], self.data['docSentiment']['type']
	#self.data['docSentiment']#['mixed']
    
    def text_entities(self):
        returnlist = []
        for item in self.data['entities']:
            returnlist.append((item['count'], item['relevance'], item['text'],  item['type']))
        return returnlist
            
    def __look_at(self, choice):
        if 'keywords' == choice:
            return "text/TextGetRankedKeywords", 1
        elif 'category' in choice:
            return "text/TextGetCategory", 2
        elif 'concepts' in choice:
            return "text/TextGetRankedConcepts", 3
        elif 'sentiment' in choice:
            return "text/TextGetTextSentiment", 4
        elif 'entities' in choice:
            return "text/TextGetRankedNamedEntities", 5
        elif 'urlkeywords' == choice:
            return "url/URLGetRankedKeywords", 6
        else:
            return None
        
    
    def run_method(self, comment, whichtoget, otherparams=None):       
        method, num = self.__look_at(whichtoget)
        if num >= 6:
            self.params['url'] = comment
        else:
            self.params['text'] = comment
        form = urllib.urlencode(self.params)
        if method != None:
            keywordsurl = "http://access.alchemyapi.com/calls/" + method + "?" + form
        else:
            print "Couldn't recognize method"
            pass
        
        #If there happens to be other parameters
        if otherparams != None:
            otherform = urllib.urlencode(otherparams)
            keywordsurl = "http://access.alchemyapi.com/calls/" + method + "?" + form + otherform 
        
        self.data = self.get_json(keywordsurl)
        
        if num == 1:
            return self.text_keywords()
        elif num == 2:
            return self.text_category()
        elif num == 3:
            return self.text_concepts()
        elif num == 4:
            return self.text_sentiment()
        elif num == 5:
            return self.text_entities()
        else:
            return self.text_keywords()


