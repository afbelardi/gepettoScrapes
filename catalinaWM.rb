require 'mechanize'


# _________________Server________


general_sites = [
    "https://www.lovebscott.com/",
    "https://bleacherreport.com/",
    "https://balleralert.com/",
    "https://peopleofcolorintech.com/",
    "https://afrotech.com/",
    "https://bossip.com/",
    "https://www.itsonsitetv.com/",
    "https://theshaderoom.com/",
    "https://shadowandact.com/",
    "https://hollywoodunlocked.com/",
    "https://www.essence.com/",
    "http://karencivil.com/",
    "https://www.revolt.tv/"
    
]

agent = Mechanize.new
holder=[]
general_sites.each do |site|
    page=agent.get(site);
    newReturn = page.search('a')
        newReturn.each do |e|
            data = e.attr('href').to_s
            if(data.length > 50)
                holder.push(data)
            end
        end
        # pp holder.to_json
    # pp holder.length.to_s + " [ posts total] ==> Now Scraping -->  " + site
end


