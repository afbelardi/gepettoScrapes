require 'mechanize'
require 'awesome_print'
require 'net/http'
require 'uri'

# First Get Post Links
    # Get Primary Site Selectors
    all_selectors = [
        '.sf-entry-body',
        '.item-list',
        '.content-header-single',
        '.article-card',
        '.post',
        '.post-block-style',
        '.content-wrap',
        '.news-info'
    ]
    # Map Selectors Again Each Site Of Interest
    all_selectors.each do |x|
        general_sites = [
            "https://www.lovebscott.com/",
            "https://bleacherreport.com/",
            "https://balleralert.com/",
            "https://peopleofcolorintech.com/",
            "https://afrotech.com/",
            "https://bossip.com/",
            "https://www.itsonsitetv.com/",
            "https://theshaderoom.com/"
        ]

        agent = Mechanize.new

#         general_sites.each do |site|
#             page=agent.get(site);
#             # rtnVal = page.search(x)
#             newRet = page.search('a')
#             ap newRet
# pp "-------------------------------------"
        #    ap endall = rtnVal.search('a').attr('href')
                
        #     endall2 = rtnVal.search('article')
            # ap endall2

            # PostLink.create(
            #     content: endall
            # )
        end
    end






# Scrape Links as url and fetch inner-content



#Create Instance 
                    # end
                    #Search for Data Pool For Each Site 
                    # ap rtnVal
                # end
#                     rtnVal.each do |u|
# #Analyze Returned Data => Does it Still Need Iterating Through 

# #      (dataPoint) => run Once More?
#                         secondaryFilters=[
#                             ".sf-entry-excerpt"
#                             # '.sf-entry-title',
#                             # '.sf-featured-image',
#                             # '.post-box-title',
#                             # '.content-title',
#                             # '.feature-holder',
#                             # '.post-title',
#                             # '.story-title',
#                             # '.sf-entry-title',
#                             # '.sf-entry-excerpt',
#                             # '.sf-featured-image'
#         # { == Continue Here ==}
#                              ]

#                         secondAttr = secondaryFilters.each do |w|
# #Run Second Filter
#     ap "Page Filtered: " + site + "THIRD PROCCESS"
#                             deepData = u.search(w)
# ap deepData
#                         end
                        # ==================
                    # end
            # end
        # end 
   


# Individual Site Scrapes

# ============BallerAlert
# agent = Mechanize.new
# url="https://balleralert.com/"
# page=agent.get(url)
# page.search('.item-list').each do |sauce|
#     title= sauce.search('.post-box-title')
#     image =sauce.search('img')
#     hash={
#         title: title,
#         image: image
#     }
#     ap hash
# end

# ==========================PeopleOfColorInTech
# agent = Mechanize.new
# url="https://peopleofcolorintech.com/"
# page=agent.get(url)
# page.search('.content-header-single').each do |e|
#     title= e.search('.content-title')
#     pic= e.search('.feature-holder')
#     hash={
#         title: title,
#         pic: pic
#     }
#     ap hash
# end


# ===============================AfroTech
# agent = Mechanize.new
# url="https://afrotech.com/"
# page=agent.get(url)
# info= page.search('.article-card')
# info.each do |u|
#     image = u.search('img')
#     title= u.search('span')
#     hash={
#         title: title,
#         image: image
#     }
#     ap hash
#     p hash.count
# end


# ===========================BlavityOne
# agent = Mechanize.new
# url="https://blavity.com/"
# page=agent.get(url)
# info= page.search('.article-card')
# info.each do |u|
#     image = u.search('img')
#     title= u.search('span')
#         hash={
#             title: title,
#             image: image
#         }
#         ap hash
#     p hash.count
# end


# ================================= Bossip
# agent = Mechanize.new
# url="https://bossip.com/"
# page=agent.get(url)
# page.search('.post').each do |k|
#     title= k.search('h2')
#     pic= k.search('img')
#     hash ={
#         title: title,
#         pic: pic
#     }
#     ap hash
# end

# ==================FinishThis

# uri = URI.parse("https://bossip.com/")
# request = Net::HTTP::Get.new(uri)
# request["Authority"] = "bossip.com"
# request["Cache-Control"] = "no-cache"
# request["Sec-Ch-Ua"] = "\"Chromium\";v=\"92\", \" Not A;Brand\";v=\"99\", \"Google Chrome\";v=\"92\""
# request["Sec-Ch-Ua-Mobile"] = "?0"
# request["Upgrade-Insecure-Requests"] = "1"
# request["User-Agent"] = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36"
# request["Accept"] = "*/*"
# request["Sec-Fetch-Site"] = "same-origin"
# request["Sec-Fetch-Mode"] = "cors"
# request["Sec-Fetch-User"] = "?1"
# request["Sec-Fetch-Dest"] = "empty"
# request["Accept-Language"] = "en-US,en;q=0.9"
# request["Cookie"] = "utm_cookie={}; mmg_viewcount=1"
# request["Referer"] = "https://bossip.com/"
# request["Origin"] = "https://bossip.com"
# request["Pragma"] = "no-cache"
# request["X-Requested-With"] = "XMLHttpRequest"

# req_options = {
#   use_ssl: uri.scheme == "https",
# }

# response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
#   http.request(request)
# end

# # response.code
# res = response.body

# noko = Nokogiri::HTML(res)


# ============================== ItsOnSite
# agent = Mechanize.new
# url="https://www.itsonsitetv.com/"
# page = agent.get(url)
# data = page.search('.post-block-style').search('.post-title').each do |o|
#     hash = {
#         title: o.text,
#         link: o
#     }
#     ap hash
# end


# ============================== Shade Room
# agent = Mechanize.new
# url="https://theshaderoom.com/"
# page = agent.get(url)
# titles = page.search('.content-wrap').search('.story-title')
# pics = page.search('.picture-wrap').search('.lozad')

# ap titles
# ap pics
# ================ Shade Room


   
# =========================  Hip Hop DX  
# agent = Mechanize.new
# url = "https://hiphopdx.com/"
# page = agent.get(url)
# bigData = page.search('.news-info')
# bigData.each do |info|
#     title = info.text.split("\n")[8]
#     pic = info.children.search('img')
#     hash = {
#         title: title,
#         pic: pic
#     }
#     ap hash.first
# end




# ================(corruptedData)BleacherReport
# agent = Mechanize.new
# url="https://bleacherreport.com/"
# page=agent.get(url)
# page.search('article').each do |a|
#    title= a.search('.label').search('h3').text
#     image= a.search('.slash')
#     hash={
#         title: title,
#         image: image
#     }
#     ap hash.first
# end



# ========================LoveBScott
# agent = Mechanize.new
# url="https://www.lovebscott.com/"
# page=agent.get(url)
# stat = page.search('.sf-entry-body').each do |y|
#     # y.search('.sf-entry-title')
# #    title = y.search('.sf-entry-excerpt')
#     title= y.search('.sf-entry-title')
#     image=y.search('.sf-featured-image')

#     hash={
#         title: title,
#         image: image
#     }
#     ap hash
# end
