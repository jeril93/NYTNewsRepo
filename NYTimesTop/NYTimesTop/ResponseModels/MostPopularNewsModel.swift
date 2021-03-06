//
//  MostPopularModel.swift
//  NYTimesTop
//
//  Created by Jeril V Raj on 13/06/22.
//

import Foundation

// MARK: - MostPopularNewsResponseModel
struct MostPopularNewsResponseModel: Codable {
    let status : String?
    let copyright : String?
    let num_results : Int?
    let results : [MostPopularNewsModel]?
}

// MARK: - MostPopularModel
struct MostPopularNewsModel: Codable {
    let url : String?
    let uri: String?
    let adx_keywords : String?
    let column : String?
    let section : String?
    let subsection: String?
    let nytdsection: String?
    let byline : String?
    let type : String?
    let title : String?
    let abstract : String?
    let published_date : String?
    let source : String?
    let id : Int?
    let updated : String?
    let asset_id : Int?
    let views : Int?
    let des_facet : [String]?
    let org_facet : [String]?
    let per_facet : [String]?
    let geo_facet : [String]?
    let eta_id: Int
    let media : [MostPopularMedia]?
}

// MARK: - MostPopularMedia
struct MostPopularMedia: Codable {
    let type : String?
    let subtype : String?
    let caption : String?
    let copyright : String?
    let approved_for_syndication : Int?
    let media_metadata : [MostPopularMediaMetaData]?
    
    enum CodingKeys: String, CodingKey {
        case type, subtype, caption, copyright, approved_for_syndication
        case media_metadata = "media-metadata"
    }
}

// MARK: - MostPopularMediaMetaData
struct MostPopularMediaMetaData: Codable {
    let url : String?
    let format : String?
    let height : Int?
    let width : Int?
}


// MARK: - Response from Postman

/*
 {
     "status": "OK",
     "copyright": "Copyright (c) 2022 The New York Times Company.  All Rights Reserved.",
     "num_results": 20,
     "results": [
         {
             "uri": "nyt://article/89818aba-d5ad-5590-becd-6ee638b0775a",
             "url": "https://www.nytimes.com/2022/06/12/us/politics/senator-gun-safety-deal.html",
             "id": 100000008394112,
             "asset_id": 100000008394112,
             "source": "New York Times",
             "published_date": "2022-06-12",
             "updated": "2022-06-13 00:03:08",
             "section": "U.S.",
             "subsection": "Politics",
             "nytdsection": "u.s.",
             "adx_keywords": "Gun Control;Uvalde, Tex, Shooting (May 24, 2022);Mass Shootings;Law and Legislation;Firearms;United States Politics and Government;Cornyn, John;Murphy, Christopher Scott;Senate",
             "column": null,
             "byline": "By Emily Cochrane and Annie Karni",
             "type": "Article",
             "title": "Senators Reach Bipartisan Deal on Gun Safety",
             "abstract": "The agreement, which falls short of the sprawling changes championed by Democrats, is a significant step toward ending a yearslong impasse over gun reform legislation.",
             "des_facet": [
                 "Gun Control",
                 "Uvalde, Tex, Shooting (May 24, 2022)",
                 "Mass Shootings",
                 "Law and Legislation",
                 "Firearms",
                 "United States Politics and Government"
             ],
             "org_facet": [
                 "Senate"
             ],
             "per_facet": [
                 "Cornyn, John",
                 "Murphy, Christopher Scott"
             ],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "Senator Chuck Schumer of New York, the majority leader, pledged to put the agreement up for a vote once the legislation had been completed.",
                     "copyright": "Michael Reynolds/EPA, via Shutterstock",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/multimedia/12dc-guns/12dc-guns-thumbStandard-v4.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/multimedia/12dc-guns/12dc-guns-mediumThreeByTwo210-v4.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/multimedia/12dc-guns/12dc-guns-mediumThreeByTwo440-v4.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/8803d006-3c6f-5492-a87f-51a386ce13e2",
             "url": "https://www.nytimes.com/2022/06/12/us/idaho-pride-white-supremacists-arrested.html",
             "id": 100000008393840,
             "asset_id": 100000008393840,
             "source": "New York Times",
             "published_date": "2022-06-12",
             "updated": "2022-06-12 23:27:46",
             "section": "U.S.",
             "subsection": "",
             "nytdsection": "u.s.",
             "adx_keywords": "Right-Wing Extremism and Alt-Right;Whites;Discrimination;Homosexuality and Bisexuality;LGBTQ Pride Month (US);Coeur d'Alene (Idaho)",
             "column": null,
             "byline": "By Daniel Walters",
             "type": "Article",
             "title": "Dozens of White Supremacists Arrested in Idaho Had Planned to Riot, Authorities Say",
             "abstract": "Members of the right-wing group Patriot Front who were charged on Saturday were preparing to disrupt a nearby Pride event, according to the police.",
             "des_facet": [
                 "Right-Wing Extremism and Alt-Right",
                 "Whites",
                 "Discrimination",
                 "Homosexuality and Bisexuality",
                 "LGBTQ Pride Month (US)"
             ],
             "org_facet": [],
             "per_facet": [],
             "geo_facet": [
                 "Coeur d'Alene (Idaho)"
             ],
             "media": [],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/de2cdd22-6c68-5c29-acd6-20284052b47b",
             "url": "https://www.nytimes.com/2022/06/12/technology/google-chatbot-ai-blake-lemoine.html",
             "id": 100000008394115,
             "asset_id": 100000008394115,
             "source": "New York Times",
             "published_date": "2022-06-12",
             "updated": "2022-06-12 22:17:55",
             "section": "Technology",
             "subsection": "",
             "nytdsection": "technology",
             "adx_keywords": "Artificial Intelligence;Computers and the Internet;Research;Discrimination;Lemoine, Blake;Google Inc",
             "column": null,
             "byline": "By Nico Grant and Cade Metz",
             "type": "Article",
             "title": "Google Sidelines Engineer Who Claims Its A.I. Is Sentient",
             "abstract": "Blake Lemoine, the engineer, says that Google???s language model has a soul. The company disagrees.",
             "des_facet": [
                 "Artificial Intelligence",
                 "Computers and the Internet",
                 "Research",
                 "Discrimination"
             ],
             "org_facet": [
                 "Google Inc"
             ],
             "per_facet": [
                 "Lemoine, Blake"
             ],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "Some artificial intelligence researchers have made optimistic claims about technologies soon reaching sentience, but many others quickly dismiss those assertions.",
                     "copyright": "Laura Morton for The New York Times",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/business/12google-ai1/12google-ai1-thumbStandard.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/business/12google-ai1/12google-ai1-mediumThreeByTwo210.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/business/12google-ai1/12google-ai1-mediumThreeByTwo440.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/cd6c56be-c9cb-59f8-ae42-c343d62e9184",
             "url": "https://www.nytimes.com/2022/06/11/opinion/trump-january-6.html",
             "id": 100000008392133,
             "asset_id": 100000008392133,
             "source": "New York Times",
             "published_date": "2022-06-11",
             "updated": "2022-06-12 11:14:21",
             "section": "Opinion",
             "subsection": "",
             "nytdsection": "opinion",
             "adx_keywords": "Storming of the US Capitol (Jan, 2021);Democracy (Theory and Philosophy);Presidential Election of 2020;United States Politics and Government;Trump, Donald J;House Select Committee to Investigate the January 6th Attack",
             "column": null,
             "byline": "By Maureen Dowd",
             "type": "Article",
             "title": "Donald Trump, American Monster",
             "abstract": "A man of pure narcissistic psychopathy feels no guilt and has no sense of the damage he does.",
             "des_facet": [
                 "Storming of the US Capitol (Jan, 2021)",
                 "Democracy (Theory and Philosophy)",
                 "Presidential Election of 2020",
                 "United States Politics and Government"
             ],
             "org_facet": [
                 "House Select Committee to Investigate the January 6th Attack"
             ],
             "per_facet": [
                 "Trump, Donald J"
             ],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "",
                     "copyright": "Brendan Smialowski/Agence France-Presse &mdash; Getty Images",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/opinion/11Dowd4/11Dowd4-thumbStandard-v2.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/opinion/11Dowd4/merlin_208329585_a0b13e67-5cde-4171-b739-2cb72b3f1c5b-mediumThreeByTwo210.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/opinion/11Dowd4/merlin_208329585_a0b13e67-5cde-4171-b739-2cb72b3f1c5b-mediumThreeByTwo440.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/28a273aa-3c6c-59e9-b4ef-31e875ba47fd",
             "url": "https://www.nytimes.com/2022/06/11/well/live/covid-reinfection.html",
             "id": 100000008375274,
             "asset_id": 100000008375274,
             "source": "New York Times",
             "published_date": "2022-06-11",
             "updated": "2022-06-12 22:05:55",
             "section": "Well",
             "subsection": "Live",
             "nytdsection": "well",
             "adx_keywords": "Coronavirus Omicron Variant;Coronavirus (2019-nCoV);Content Type: Service;Research;Vaccination and Immunization;Immune System",
             "column": null,
             "byline": "By Knvul Sheikh",
             "type": "Article",
             "title": "How Long Does Covid Immunity Last? Will a Second Illness Be Worse? How Can I Prepare?",
             "abstract": "Some reinfection questions, answered.",
             "des_facet": [
                 "Coronavirus Omicron Variant",
                 "Coronavirus (2019-nCoV)",
                 "Content Type: Service",
                 "Research",
                 "Vaccination and Immunization",
                 "Immune System"
             ],
             "org_facet": [],
             "per_facet": [],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "",
                     "copyright": "Leonardo Santamaria",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/05/16/well/16Well-Covid-Reinfection/16Well-Covid-Reinfection-thumbStandard.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/05/16/well/16Well-Covid-Reinfection/16Well-Covid-Reinfection-mediumThreeByTwo210.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/05/16/well/16Well-Covid-Reinfection/16Well-Covid-Reinfection-mediumThreeByTwo440.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/cc479a31-c696-5ec6-b92e-ef6defc2fb96",
             "url": "https://www.nytimes.com/2022/06/12/crosswords/spelling-bee-forum.html",
             "id": 100000008382347,
             "asset_id": 100000008382347,
             "source": "New York Times",
             "published_date": "2022-06-12",
             "updated": "2022-06-12 03:00:03",
             "section": "Gameplay",
             "subsection": "",
             "nytdsection": "gameplay",
             "adx_keywords": "",
             "column": null,
             "byline": "By Isaac Aronow and Doug Mennella",
             "type": "Article",
             "title": "Spelling Bee Forum",
             "abstract": "Feeling stuck on today???s puzzle? We can help.",
             "des_facet": [],
             "org_facet": [],
             "per_facet": [],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "",
                     "copyright": "YURI KADOBNOV/AFP via Getty Images",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/03/29/crosswords/29bee-forum-tue/29bee-forum-tue-thumbStandard.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/03/29/crosswords/29bee-forum-tue/29bee-forum-tue-mediumThreeByTwo210.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/03/29/crosswords/29bee-forum-tue/29bee-forum-tue-mediumThreeByTwo440.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/0e03b93d-60aa-5285-a849-4a319d7bc6c9",
             "url": "https://www.nytimes.com/2022/06/11/opinion/fed-federal-reserve-inflation-democrats.html",
             "id": 100000008385344,
             "asset_id": 100000008385344,
             "source": "New York Times",
             "published_date": "2022-06-11",
             "updated": "2022-06-12 10:29:12",
             "section": "Opinion",
             "subsection": "",
             "nytdsection": "opinion",
             "adx_keywords": "United States Economy;Inflation (Economics);Prices (Fares, Fees and Rates);Interest Rates;Midterm Elections (2022);United States Politics and Government;Powell, Jerome H;Biden, Joseph R Jr;Federal Reserve System;Republican Party;Democratic Party",
             "column": null,
             "byline": "By Christopher Leonard",
             "type": "Article",
             "title": "If You Must Point Fingers on Inflation, Here???s Where to Point Them",
             "abstract": "The Fed continues to evade accountability for inflation.",
             "des_facet": [
                 "United States Economy",
                 "Inflation (Economics)",
                 "Prices (Fares, Fees and Rates)",
                 "Interest Rates",
                 "Midterm Elections (2022)",
                 "United States Politics and Government"
             ],
             "org_facet": [
                 "Federal Reserve System",
                 "Republican Party",
                 "Democratic Party"
             ],
             "per_facet": [
                 "Powell, Jerome H",
                 "Biden, Joseph R Jr"
             ],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "",
                     "copyright": "Stefani Reynolds for The New York Times",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/06/11/opinion/11Leonard/11Leonard-thumbStandard.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/11/opinion/11Leonard/merlin_197799537_48cbd697-ff9a-4967-88eb-b6cbde0c5e27-mediumThreeByTwo210.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/11/opinion/11Leonard/merlin_197799537_48cbd697-ff9a-4967-88eb-b6cbde0c5e27-mediumThreeByTwo440.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/f5a0be05-6199-57b9-b2aa-6ea36ed03ff6",
             "url": "https://www.nytimes.com/2022/06/11/us/politics/jan-6-prosecute-trump.html",
             "id": 100000008392776,
             "asset_id": 100000008392776,
             "source": "New York Times",
             "published_date": "2022-06-11",
             "updated": "2022-06-12 10:43:50",
             "section": "U.S.",
             "subsection": "Politics",
             "nytdsection": "u.s.",
             "adx_keywords": "Storming of the US Capitol (Jan, 2021);Presidential Election of 2020;United States Politics and Government;Trump, Donald J;Garland, Merrick B;House Select Committee to Investigate the January 6th Attack;Justice Department",
             "column": null,
             "byline": "By Peter Baker and Katie Benner",
             "type": "Article",
             "title": "Jan. 6 Committee Appears to Lay Out Road Map for Prosecuting Trump",
             "abstract": "The first prime-time hearing into the Jan. 6 attack confronted the fundamental question that has haunted Donald J. Trump since he left office: Should he be prosecuted in a criminal court?",
             "des_facet": [
                 "Storming of the US Capitol (Jan, 2021)",
                 "Presidential Election of 2020",
                 "United States Politics and Government"
             ],
             "org_facet": [
                 "House Select Committee to Investigate the January 6th Attack",
                 "Justice Department"
             ],
             "per_facet": [
                 "Trump, Donald J",
                 "Garland, Merrick B"
             ],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "At its hearing on Thursday night, the House committee investigating the Capitol attack detailed what it called former President Donald J. Trump???s ???illegal??? and ???unconstitutional??? seven-part plan to prevent the transfer of power.",
                     "copyright": "Kenny Holston for The New York Times",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/us/politics/11dc-trump/merlin_208354395_4f860b64-1b50-400e-bf3d-a769831d475b-thumbStandard.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/us/politics/11dc-trump/merlin_208354395_4f860b64-1b50-400e-bf3d-a769831d475b-mediumThreeByTwo210.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/us/politics/11dc-trump/merlin_208354395_4f860b64-1b50-400e-bf3d-a769831d475b-mediumThreeByTwo440.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/7a069fe9-16fd-55e7-85b6-41c15ad9b17b",
             "url": "https://www.nytimes.com/2022/06/11/us/politics/biden-2024-election-democrats.html",
             "id": 100000008385695,
             "asset_id": 100000008385695,
             "source": "New York Times",
             "published_date": "2022-06-11",
             "updated": "2022-06-12 10:46:55",
             "section": "U.S.",
             "subsection": "Politics",
             "nytdsection": "u.s.",
             "adx_keywords": "Presidential Election of 2024;Polls and Public Opinion;Voting and Voters;Midterm Elections (2022);United States Politics and Government;Biden, Joseph R Jr;Democratic Party",
             "column": null,
             "byline": "By Reid J. Epstein and Jennifer Medina",
             "type": "Article",
             "title": "Should Biden Run in 2024? Democratic Whispers of ???No??? Start to Rise.",
             "abstract": "In interviews, dozens of frustrated Democratic officials, members of Congress and voters expressed doubts about the president???s ability to rescue his reeling party and take the fight to Republicans.",
             "des_facet": [
                 "Presidential Election of 2024",
                 "Polls and Public Opinion",
                 "Voting and Voters",
                 "Midterm Elections (2022)",
                 "United States Politics and Government"
             ],
             "org_facet": [
                 "Democratic Party"
             ],
             "per_facet": [
                 "Biden, Joseph R Jr"
             ],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "President Biden with Senators Joe Manchin III of West Virginia, center, and Jon Tester of Montana. Many Democratic officials and voters bear no ill will toward Mr. Biden, but would like a new face to lead the party.",
                     "copyright": "Doug Mills/The New York Times",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/multimedia/11pol-dems-print1/00pol-dems-photo01-thumbStandard.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/multimedia/11pol-dems-print1/00pol-dems-photo01-mediumThreeByTwo210-v3.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/multimedia/11pol-dems-print1/00pol-dems-photo01-mediumThreeByTwo440-v3.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/2e6c6389-b45e-5264-895b-935130cfd8d6",
             "url": "https://www.nytimes.com/2022/06/10/well/live/ramsay-hunt-syndrome-facial-paralysis.html",
             "id": 100000008393094,
             "asset_id": 100000008393094,
             "source": "New York Times",
             "published_date": "2022-06-10",
             "updated": "2022-06-11 19:50:03",
             "section": "Well",
             "subsection": "Live",
             "nytdsection": "well",
             "adx_keywords": "Ramsay Hunt Syndrome;Bieber, Justin",
             "column": null,
             "byline": "By Dani Blum",
             "type": "Article",
             "title": "What Is Ramsay Hunt Syndrome?",
             "abstract": "Justin Bieber announced that he had the rare facial condition. Here???s what you need to know about it.",
             "des_facet": [
                 "Ramsay Hunt Syndrome"
             ],
             "org_facet": [],
             "per_facet": [
                 "Bieber, Justin"
             ],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "",
                     "copyright": "Getty Images",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/06/10/well/WELL-RAMSAY-HUNT/WELL-RAMSAY-HUNT-thumbStandard.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/10/well/WELL-RAMSAY-HUNT/WELL-RAMSAY-HUNT-mediumThreeByTwo210.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/10/well/WELL-RAMSAY-HUNT/WELL-RAMSAY-HUNT-mediumThreeByTwo440.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/b16b0881-1e8a-59ad-bfbe-687d3f62f1f7",
             "url": "https://www.nytimes.com/2022/06/10/us/politics/trump-ivanka-january-6-hearing.html",
             "id": 100000008392026,
             "asset_id": 100000008392026,
             "source": "New York Times",
             "published_date": "2022-06-10",
             "updated": "2022-06-11 12:08:30",
             "section": "U.S.",
             "subsection": "Politics",
             "nytdsection": "u.s.",
             "adx_keywords": "Presidential Election of 2020;Storming of the US Capitol (Jan, 2021);United States Politics and Government;Voter Fraud (Election Fraud);Rumors and Misinformation;Trump, Donald J;Trump, Ivanka;Barr, William P;House Select Committee to Investigate the January 6th Attack;House of Representatives",
             "column": null,
             "byline": "By Maggie Haberman",
             "type": "Article",
             "title": "Trump Hits Back at Daughter???s Account That She Accepted His Election Loss",
             "abstract": "The former president, responding to videotaped testimony played at the Jan. 6 hearing, said Ivanka Trump had been ???checked out??? and was not involved in studying the election results.",
             "des_facet": [
                 "Presidential Election of 2020",
                 "Storming of the US Capitol (Jan, 2021)",
                 "United States Politics and Government",
                 "Voter Fraud (Election Fraud)",
                 "Rumors and Misinformation"
             ],
             "org_facet": [
                 "House Select Committee to Investigate the January 6th Attack",
                 "House of Representatives"
             ],
             "per_facet": [
                 "Trump, Donald J",
                 "Trump, Ivanka",
                 "Barr, William P"
             ],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "President Donald J. Trump and his elder daughter, Ivanka Trump, traveled to a political rally in Georgia two days before Trump supporters stormed the Capitol on Jan. 6, 2021.",
                     "copyright": "Erin Schaff/The New York Times",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/06/10/us/politics/10dc-trump-1/10dc-trump-1-thumbStandard.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/10/us/politics/10dc-trump-1/10dc-trump-1-mediumThreeByTwo210-v2.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/10/us/politics/10dc-trump-1/10dc-trump-1-mediumThreeByTwo440-v2.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/23a19a43-34d5-511e-9d6d-51f6faf47668",
             "url": "https://www.nytimes.com/2022/06/08/us/politics/jared-kushner-trump-jan-6.html",
             "id": 100000008384410,
             "asset_id": 100000008384410,
             "source": "New York Times",
             "published_date": "2022-06-08",
             "updated": "2022-06-11 09:17:02",
             "section": "U.S.",
             "subsection": "Politics",
             "nytdsection": "u.s.",
             "adx_keywords": "Storming of the US Capitol (Jan, 2021);Presidential Election of 2020;United States Politics and Government;Project Democracy;Kushner, Jared;Trump, Donald J;Trump, Ivanka;House of Representatives;House Select Committee to Investigate the January 6th Attack",
             "column": null,
             "byline": "By Peter Baker",
             "type": "Article",
             "title": "How Jared Kushner Washed His Hands of Donald Trump Before Jan. 6",
             "abstract": "Mr. Kushner???s role in the final months of the Trump White House could come into sharp relief once the committee investigating the attack on the Capitol opens hearings.",
             "des_facet": [
                 "Storming of the US Capitol (Jan, 2021)",
                 "Presidential Election of 2020",
                 "United States Politics and Government",
                 "Project Democracy"
             ],
             "org_facet": [
                 "House of Representatives",
                 "House Select Committee to Investigate the January 6th Attack"
             ],
             "per_facet": [
                 "Kushner, Jared",
                 "Trump, Donald J",
                 "Trump, Ivanka"
             ],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "Jared Kushner???s decision to withdraw from the most consequential moment of the Trump presidency left few effective counterweights to plotters looking to subvert the 2020 election.",
                     "copyright": "Erin Schaff/The New York Times",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/06/06/us/politics/06dc-kushner-1/06dc-kushner-1-thumbStandard.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/06/us/politics/06dc-kushner-1/merlin_175709388_79a5aaef-c492-4934-b6d0-5d261eae324b-mediumThreeByTwo210.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/06/us/politics/06dc-kushner-1/merlin_175709388_79a5aaef-c492-4934-b6d0-5d261eae324b-mediumThreeByTwo440.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/5b585b16-b865-5c3a-a62c-f766778b3c5f",
             "url": "https://www.nytimes.com/2022/06/07/sports/football/deshaun-watson.html",
             "id": 100000008375346,
             "asset_id": 100000008375346,
             "source": "New York Times",
             "published_date": "2022-06-07",
             "updated": "2022-06-08 12:05:06",
             "section": "Sports",
             "subsection": "N.F.L.",
             "nytdsection": "sports",
             "adx_keywords": "Spas;Massage;Sexual Harassment;Sex Crimes;Suits and Litigation (Civil);Nondisclosure Agreements;Women and Girls;Football;Watson, Deshaun (1995- );Houston Texans;Cleveland Browns;National Football League",
             "column": null,
             "byline": "By Jenny Vrentas",
             "type": "Article",
             "title": "How the Texans and a Spa Enabled Deshaun Watson???s Troubling Behavior",
             "abstract": "Watson met at least 66 women for massages over a 17-month period, far more than previously known. He had help from the Houston Texans, including nondisclosure agreements, in making appointments.",
             "des_facet": [
                 "Spas",
                 "Massage",
                 "Sexual Harassment",
                 "Sex Crimes",
                 "Suits and Litigation (Civil)",
                 "Nondisclosure Agreements",
                 "Women and Girls",
                 "Football"
             ],
             "org_facet": [
                 "Houston Texans",
                 "Cleveland Browns",
                 "National Football League"
             ],
             "per_facet": [
                 "Watson, Deshaun (1995- )"
             ],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "",
                     "copyright": "Mel Haasch",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/06/07/sports/07watson-timeline/07watson-timeline-thumbStandard.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/07/sports/07watson-timeline/07watson-timeline-mediumThreeByTwo210.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/07/sports/07watson-timeline/07watson-timeline-mediumThreeByTwo440.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/cdc10bd3-6799-58fc-a93d-6545f2a14490",
             "url": "https://www.nytimes.com/article/jan-6-hearings-watch-tv-channel-schedule.html",
             "id": 100000008393139,
             "asset_id": 100000008393139,
             "source": "New York Times",
             "published_date": "2022-06-12",
             "updated": "2022-06-12 20:23:47",
             "section": "U.S.",
             "subsection": "",
             "nytdsection": "u.s.",
             "adx_keywords": "Storming of the US Capitol (Jan, 2021);House Select Committee to Investigate the January 6th Attack",
             "column": null,
             "byline": "By Zach Montague",
             "type": "Article",
             "title": "How to Watch the Jan. 6 Committee Hearings",
             "abstract": "The second of several upcoming hearings by the House committee investigating the attack on the Capitol will be held Monday morning.",
             "des_facet": [
                 "Storming of the US Capitol (Jan, 2021)"
             ],
             "org_facet": [
                 "House Select Committee to Investigate the January 6th Attack"
             ],
             "per_facet": [],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "Supporters of President Donald J. Trump rallying at the Supreme Court on Nov. 14, 2020. Monday???s hearing will focus on ???the big lie??? that Mr. Trump won the election.",
                     "copyright": "Shawn Thew/EPA, via Shutterstock",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/us/politics/12jan6-hearings-howtowatch-1/12jan6-hearings-howtowatch-1-thumbStandard.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/us/politics/12jan6-hearings-howtowatch-1/merlin_199870083_1775b0e3-e7c1-4493-86b2-d886afdad67a-mediumThreeByTwo210.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/us/politics/12jan6-hearings-howtowatch-1/merlin_199870083_1775b0e3-e7c1-4493-86b2-d886afdad67a-mediumThreeByTwo440.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/a1d35fed-b3c2-5fcb-8756-ac70ac6c51ed",
             "url": "https://www.nytimes.com/2022/05/12/well/dog-behavior.html",
             "id": 100000008346962,
             "asset_id": 100000008346962,
             "source": "New York Times",
             "published_date": "2022-05-12",
             "updated": "2022-06-12 12:21:45",
             "section": "Well",
             "subsection": "",
             "nytdsection": "well",
             "adx_keywords": "Dogs;Animal Cognition;Animal Behavior;Content Type: Service",
             "column": null,
             "byline": "By Melinda Wenner Moyer",
             "type": "Article",
             "title": "What Your Dog Wants",
             "abstract": "Dogs are ???really good at reading our emotions,??? says one expert. But we???re not so good at reading theirs.",
             "des_facet": [
                 "Dogs",
                 "Animal Cognition",
                 "Animal Behavior",
                 "Content Type: Service"
             ],
             "org_facet": [],
             "per_facet": [],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "",
                     "copyright": "Illustration by Nicolas Ortega; Photograph by Getty Images",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/05/17/well/12-Well-NL-Dogs/12-Well-NL-Dogs-thumbStandard.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/05/17/well/12-Well-NL-Dogs/12-Well-NL-Dogs-mediumThreeByTwo210.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/05/17/well/12-Well-NL-Dogs/12-Well-NL-Dogs-mediumThreeByTwo440.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/032b2529-c7ba-5bc3-a5af-023e58be2b72",
             "url": "https://www.nytimes.com/2022/06/11/us/gun-violence-protests.html",
             "id": 100000008391113,
             "asset_id": 100000008391113,
             "source": "New York Times",
             "published_date": "2022-06-11",
             "updated": "2022-06-12 14:30:00",
             "section": "U.S.",
             "subsection": "",
             "nytdsection": "u.s.",
             "adx_keywords": "Demonstrations, Protests and Riots;Gun Control;Mass Shootings",
             "column": null,
             "byline": "By Michael Wines, Anne Barnard, Sean Keenan, Dave Montgomery and Meghann M. Cuniff",
             "type": "Article",
             "title": "???Scared and Tired???: Thousands Across the U.S. Rally Against Gun Violence",
             "abstract": "As hundreds of demonstrations unfolded around the country on Saturday, supporters of gun control legislation cried out for action.",
             "des_facet": [
                 "Demonstrations, Protests and Riots",
                 "Gun Control",
                 "Mass Shootings"
             ],
             "org_facet": [],
             "per_facet": [],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "Protesters rallying at the March for Our Lives demonstration on the National Mall in Washington on Saturday.",
                     "copyright": "Al Drago for The New York Times",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/06/11/multimedia/11gun-protests-DC-04/11gun-protests-DC-04-thumbStandard.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/11/multimedia/11gun-protests-DC-04/11gun-protests-DC-04-mediumThreeByTwo210.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/11/multimedia/11gun-protests-DC-04/11gun-protests-DC-04-mediumThreeByTwo440.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/9cf23a67-4576-5e84-b49c-c87a4bfbd4aa",
             "url": "https://www.nytimes.com/2022/06/11/us/politics/pence-jan-6-election-trump.html",
             "id": 100000008393748,
             "asset_id": 100000008393748,
             "source": "New York Times",
             "published_date": "2022-06-11",
             "updated": "2022-06-12 14:40:40",
             "section": "U.S.",
             "subsection": "Politics",
             "nytdsection": "u.s.",
             "adx_keywords": "Storming of the US Capitol (Jan, 2021);Presidential Election of 2020;United States Politics and Government;Electoral College;Voter Fraud (Election Fraud);Rumors and Misinformation;Legal Profession;Pence, Mike;Jacob, Gregory F (1974- );Eastman, John C;Trump, Donald J;House Select Committee to Investigate the January 6th Attack",
             "column": null,
             "byline": "By Maggie Haberman",
             "type": "Article",
             "title": "Pence Aide Warned Against Blocking Electoral College Count, Memo Shows",
             "abstract": "Shortly before Jan. 6, Vice President Mike Pence???s chief counsel wrote that holding up the certification of the election results would violate federal law.",
             "des_facet": [
                 "Storming of the US Capitol (Jan, 2021)",
                 "Presidential Election of 2020",
                 "United States Politics and Government",
                 "Electoral College",
                 "Voter Fraud (Election Fraud)",
                 "Rumors and Misinformation",
                 "Legal Profession"
             ],
             "org_facet": [
                 "House Select Committee to Investigate the January 6th Attack"
             ],
             "per_facet": [
                 "Pence, Mike",
                 "Jacob, Gregory F (1974- )",
                 "Eastman, John C",
                 "Trump, Donald J"
             ],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "Vice President Mike Pence officiated on Jan. 6, 2021, at a joint session of Congress convened to count the Electoral College votes.",
                     "copyright": "Erin Schaff/The New York Times",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2021/01/12/us/politics/11dc-pence-2022/12dc-pence-thumbStandard.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2021/01/12/us/politics/11dc-pence-2022/merlin_182054052_610b167c-8fb1-44ae-a8f6-5948c7b0e71c-mediumThreeByTwo210.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2021/01/12/us/politics/11dc-pence-2022/merlin_182054052_610b167c-8fb1-44ae-a8f6-5948c7b0e71c-mediumThreeByTwo440.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://legacycollection/8dc02040-f5c9-5c5d-be48-6a5d1d407f40",
             "url": "https://www.nytimes.com/live/2022/06/12/theater/tony-awards",
             "id": 100000008363052,
             "asset_id": 100000008363052,
             "source": "",
             "published_date": "2022-06-12",
             "updated": "2022-06-13 00:42:21",
             "section": "Theater",
             "subsection": "",
             "nytdsection": "theater",
             "adx_keywords": "Theater;Tony Awards (Theater Awards);Actors and Actresses;Broadway (Manhattan, NY)",
             "column": null,
             "byline": "",
             "type": "LegacyCollection",
             "title": "Moments From the 2022 Tony Awards: ???Strange Loop,??? ???Lehman Trilogy??? and More",
             "abstract": "???A Strange Loop??? won best musical and ???The Lehman Trilogy??? was named best play. Myles Frost of ???MJ??? won best actor in a musical, and Joaquina Kalukango of ???Paradise Square??? was best actress.",
             "des_facet": [
                 "Theater",
                 "Tony Awards (Theater Awards)",
                 "Actors and Actresses"
             ],
             "org_facet": [],
             "per_facet": [],
             "geo_facet": [
                 "Broadway (Manhattan, NY)"
             ],
             "media": [],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/eb4866b3-e863-5bff-8ff3-71d23e277893",
             "url": "https://www.nytimes.com/2022/06/10/us/politics/tom-rice-trump-impeach.html",
             "id": 100000008393255,
             "asset_id": 100000008393255,
             "source": "New York Times",
             "published_date": "2022-06-10",
             "updated": "2022-06-12 18:22:36",
             "section": "U.S.",
             "subsection": "Politics",
             "nytdsection": "u.s.",
             "adx_keywords": "Elections, House of Representatives;Primaries and Caucuses;United States Politics and Government;Impeachment;Storming of the US Capitol (Jan, 2021);Rice, Tom (1957- );Fry, Russell (1985- );Trump, Donald J;Republican Party;South Carolina",
             "column": null,
             "byline": "By Maya King",
             "type": "Article",
             "title": "Days before his South Carolina primary, a G.O.P. congressman who voted to impeach Trump stands by his vote.",
             "abstract": "Representative Tom Rice is bracing for a tough runoff election against a Trump-backed challenger following Tuesday???s primary.",
             "des_facet": [
                 "Elections, House of Representatives",
                 "Primaries and Caucuses",
                 "United States Politics and Government",
                 "Impeachment",
                 "Storming of the US Capitol (Jan, 2021)"
             ],
             "org_facet": [
                 "Republican Party"
             ],
             "per_facet": [
                 "Rice, Tom (1957- )",
                 "Fry, Russell (1985- )",
                 "Trump, Donald J"
             ],
             "geo_facet": [
                 "South Carolina"
             ],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "Representative Tom Rice, a South Carolina Republican who voted to impeach Donald Trump, at a campaign event in Conway, S.C.",
                     "copyright": "Madeline Gray for The New York Times",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/06/10/us/politics/10midterm-briefing-tomrice/10midterm-briefing-tomrice-thumbStandard.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/10/us/politics/10midterm-briefing-tomrice/10midterm-briefing-tomrice-mediumThreeByTwo210.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/10/us/politics/10midterm-briefing-tomrice/10midterm-briefing-tomrice-mediumThreeByTwo440.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         },
         {
             "uri": "nyt://article/721ceb1a-44fb-53b9-8c59-3f9abc631c48",
             "url": "https://www.nytimes.com/2022/06/12/us/politics/trump-bill-stepien-jan-6-hearing.html",
             "id": 100000008394134,
             "asset_id": 100000008394134,
             "source": "New York Times",
             "published_date": "2022-06-12",
             "updated": "2022-06-12 23:21:55",
             "section": "U.S.",
             "subsection": "Politics",
             "nytdsection": "u.s.",
             "adx_keywords": "Presidential Election of 2020;Storming of the US Capitol (Jan, 2021);United States Politics and Government;Cheney, Liz;Ginsberg, Benjamin L;Biden, Joseph R Jr;Trump, Donald J;Stirewalt, Chris;Stepien, Bill;Pak, Byung J;House Select Committee to Investigate the January 6th Attack",
             "column": null,
             "byline": "By Luke Broadwater and Maggie Haberman",
             "type": "Article",
             "title": "Trump Campaign Chief to Headline Jan. 6 Hearing on Election Lies",
             "abstract": "Bill Stepien is expected to appear alongside a fired Fox News editor who called Trump???s loss and a former U.S. attorney who resigned rather than go along with false claims of election fraud.",
             "des_facet": [
                 "Presidential Election of 2020",
                 "Storming of the US Capitol (Jan, 2021)",
                 "United States Politics and Government"
             ],
             "org_facet": [
                 "House Select Committee to Investigate the January 6th Attack"
             ],
             "per_facet": [
                 "Cheney, Liz",
                 "Ginsberg, Benjamin L",
                 "Biden, Joseph R Jr",
                 "Trump, Donald J",
                 "Stirewalt, Chris",
                 "Stepien, Bill",
                 "Pak, Byung J"
             ],
             "geo_facet": [],
             "media": [
                 {
                     "type": "image",
                     "subtype": "photo",
                     "caption": "Bill Stepien, the final chairman of Mr. Trump???s campaign, at his campaign headquarters in Arlington, Va., on Nov. 3, 2020.",
                     "copyright": "Anna Moneymaker for The New York Times",
                     "approved_for_syndication": 1,
                     "media-metadata": [
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/us/politics/12dc-jan6-1/12dc-jan6-1-thumbStandard.jpg",
                             "format": "Standard Thumbnail",
                             "height": 75,
                             "width": 75
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/us/politics/12dc-jan6-1/12dc-jan6-1-mediumThreeByTwo210.jpg",
                             "format": "mediumThreeByTwo210",
                             "height": 140,
                             "width": 210
                         },
                         {
                             "url": "https://static01.nyt.com/images/2022/06/12/us/politics/12dc-jan6-1/12dc-jan6-1-mediumThreeByTwo440.jpg",
                             "format": "mediumThreeByTwo440",
                             "height": 293,
                             "width": 440
                         }
                     ]
                 }
             ],
             "eta_id": 0
         }
     ]
 }
 */
