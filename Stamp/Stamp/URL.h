//
//  URL.h
//  Stamp
//
//  Created by qianfeng on 16/1/19.
//  Copyright © 2016年 qianfeng. All rights reserved.
//

#ifndef URL_h
#define URL_h

//首页scroll接口
#define SCROLL_AD_URL @"http://www.youbicaifu.com/home/custnews/cnList"

//首页scroll详情接口
#define SCROLL_AD_DETAIL_URL @"http://www.youbicaifu.com/home/custnews/cnArticle/news_id/%d"

//首页广告接口
#define AD_URL @"http://www.youbicaifu.com/home/publicity/pubSele"

//首页广告详情接口
#define AD_DETAIL_URL @"http://www.youbicaifu.com/home/publicity/pubArticle/pub_id/%d"

//侧滑页面最新公告接口 第一个参数是页数,第二个参数一页显示几个
#define NEW_NOTICE_URL @"http://www.youbicaifu.com/home/news/getNewNews/page_flag/%d/req_num/%d"

//侧滑页面最新公告详情页面 参数是NEW_NOTICE_URL的news_id
#define NEW_NOTICE_DETAIL_URL @"http://www.youbicaifu.com/home/news/newsArticle/sort_id/%d"

//首页入市指南接口,上面的button
#define MARKET_TITLE_URL @"http://www.youbicaifu.com/home/Rules/rulessort"

//首页入市指南各交易所详情list,参数是MARKET_TITLE_URL的rules_id
#define MARKET_CONTENT_URL @"http://www.youbicaifu.com/home/Rules/ruleslist/rules_id/%d"

//首页入市指南各交易所步骤接口,第一个参数是MARKET_TITLE_URL的rules_id 第二个是MARKET_CONTENT_URL里的list_id
#define MARKET_CONTENT_DETAIL_URL @"http://www.youbicaifu.com/home/Rules/rulesarticle/rules_id/%d/id/%d"

//公告页面接口
#define NOTICE_TITLE_URL @"http://www.youbicaifu.com/home/News/newssort"

//公告页面各交易所公告接口 第一个参数是页数,第二个参数是 NOTICE_TITLE_URL 的sort_id;
#define NOTICE_TITLE_CONTENT_URL @"http://www.youbicaifu.com/home/news/getNewsList/page_flag/%d/req_num/10/sort_id/%d"

//公告页面各交易所公告详情 参数是 NOTICE_TITLE_CONTENT_URL 接口中的news_id
#define NOTICE_TITLE_DETAIL_URL @"http://www.youbicaifu.com/home/news/newsArticle/sort_id/%d"

//首页论坛页面接口
#define BBS_TOP_URL @"http://www.youbicaifu.com/home/forum/getForumSort/page_flag/1/req_num/10"

//论坛置顶详情页面接口 第一个参数是 BBS_TOP_URL 接口中的news_id
#define BBS_TOP_DETAIL_URL @"http://www.youbicaifu.com/home/forum/newsArticle/news_id/%d"

//首页交易所信息接口
#define MARKET_URL @"http://www.youbicaifu.com/home/paiming/getList/type/0"

//首页更多交易所接口
#define MARKET_MORE_URL @"http://www.youbicaifu.com/home/paiming/getList/type/1"

//交易所详情接口 参数是 MARKET_MORE_URL 接口中的sort_id
#define MARKET_DETAIL_URL @"http://www.youbicaifu.com/home/tape/tapeData/type_id/%d/type/-1/"


//首页热门新闻接口
#define HOTNEWS_URL @"http://www.youbicaifu.com/home/hotnews/hotlist"

//首页热门新闻详情接口 HOTNEWS_URL 中的hot_id
#define HOTNEWS_DETAIL_URL @"http://www.youbicaifu.com/home/hotnews/hotArticle/hot_id/%d"


#endif /* URL_h */











