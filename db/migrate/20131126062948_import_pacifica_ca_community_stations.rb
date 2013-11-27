class ImportPacificaCaCommunityStations < ActiveRecord::Migration
  def self.up
    pacifica_callsigns=['CJLY','CJUM','CKUT','KAHU','KAOS','KAPY','KAZI','KBCS','KBCU','KBFT','KBOO','KBRP','KBUT','KCSB','KDNK','KDRT','KDUR','KDVS','KEOS','KEUL','KFAI','KGHI','KGLP','KGNU','KHEN','KHOI','KHSU','KIDE','KKCR','KKFI','KKRN','KKWE','KLCZ','KLOI','KMEC','KMUD','KMUN','KNFS','KNON','KOJB','KOPA','KOPN','KOWA','KOYA','KPDO','KPOV','KPVL','KRBX','KRCC','KRCL','KRFP','KRFY','KROV','KRZA','KSER','KSFR','KSKQ','KSOW','KSUA','KSVR','KUGS','KUNM','KUOI','KUSP','KVMR','KVNF','KVOY','KWMD','KXCI','KXCR','KYAQ','KYGT','KYRS','KZFR','KZGM','KZMU','KZYX','WAZU','WBCR','WBRY','WCIW','WCOM','WCRS','WCRX','WDFH','WDRT','WDSV','WECI','WEFT','WEOS','WERU','WESU','WFTE','WGDR','WGOT','WGXC','WHAV','WHDD','WHUS','WHYR','WHYS','WIEC','WJFF','WJSC','WJZF','WKNH','WLRI','WLRZ','WMNF','WMPG','WMRW','WMXP','WNCU','WNHN','WNJR','WOJB','WOMR','WOOL','WORT','WPKN','WPPP','WPRR','WPVM','WQVR','WRCT','WRFA','WRFG','WRFI','WRFL','WRFN','WRIR','WRNC','WRPI','WSCA','WSLR','WSQX','WTJU','WTSR','WUMD','WUOW','WUSB','WUVI','WVKR','WVVY','WXOJ','WYAP','WZRD']
    
    ca_community_callsigns=['CFAD-FM','CFBI-FM','CFBO-FM','CFBS-FM','CFBS-FM-1','CFBS-FM-2','CFBW-FM','CFCH-FM','CFCR-FM','CFEP-FM','CFET-FM','CFFF-FM','CFGM-FM','CFID-FM','CFIN-FM','CFIN-FM-1','CFIN-FM-2','CFIN-FM-3','CFIN-FM-4','CFJU-FM','CFLR-FM','CFLX-FM','CFMF-FM','CFNB-FM','CFND-FM','CFNE-FM','CFNM-FM','CFNQ-FM','CFNR-FM','CFRG-FM','CFRH-FM','CFRM-FM','CFRO-FM','CFRT-FM','CFSI-FM','CFTA-FM','CFTH-FM-1','CFTH-FM-2','CFTH-FM-3','CFTI-FM','CFUT-FM','CFWE-FM','CFXM-FM','CFYT-FM','CFZY-FM','CHAA-FM','CHAI-FM','CHAI-FM-1','CHAR-FM','CHBI-FM','CHCN-FM','CHCR-FM','CHEF-FM','CHEF-FM-3','CHES-FM','CHET-FM','CHFG-FM','CHFL-FM','CHGA-FM','CHHA','CHIP-FM','CHLI-FM','CHLK-FM','CHLR-FM','CHLS-FM','CHLY-FM','CHME-FM','CHME-FM-1','CHME-FM-2','CHMK-FM','CHMO','CHNT-FM','CHNW-FM','CHOC-FM','CHOD-FM','CHON-FM','CHOQ-FM','CHOW-FM','CHPH-FM','CHQC-FM','CHRG-FM','CHRQ-FM','CHUK-FM','CHUN-FM','CHUT-FM','CHUT-FM-1','CIAU-FM','CIAX-FM','CIBE-FM','CIBL-FM','CIBO-FM','CICK-FM','CICR-FM','CICU-FM','CIDI-FM','CIDO-FM','CIEU-FM','CIEU-FM-1','CIFA-FM','CIGN-FM','CIHW-FM','CIKO-FM','CILE-FM','CILE-FM-1','CILE-FM-2','CILS-FM','CIMB-FM','CIML-FM','CIMS-FM','CINI-FM','CINN-FM','CINY-FM','CITK-FM','CIUT-FM','CIVR-FM','CIWN-FM','CIWS-FM','CJAI-FM','CJAS-FM','CJBB-FM','CJBE-FM','CJCK-FM','CJCK-FM','CJEU','CJFB-FM','CJFL-FM','CJHQ-FM','CJHR-FM','CJIJ-FM','CJIK-FM','CJJJ-FM','CJLY-FM','CJMD-FM','CJMP-FM','CJMQ-FM','CJPL-FM','CJQC-FM','CJRE-FM','CJRG-FM','CJRG-FM-2','CJRH-FM','CJRM-FM','CJRS','CJRV-FM','CJSE-FM','CJTB-FM','CJTR-FM','CKAG-FM','CKAJ-FM','CKAJ-FM-1','CKAU-FM','CKAU-FM-1','CKBN-FM','CKGI-FM','CKGN-FM','CKHA-FM','CKHQ-FM','CKHR-FM','CKHV','CKIA-FM','CKJM-FM','CKKE-FM','CKLB-FM','CKMA-FM','CKMN-FM','CKMS-FM','CKNA-FM','CKOA-FM','CKOL-FM','CKRH-FM','CKRK-FM','CKRL-FM','CKRO-FM','CKRP-FM','CKRQ-FM','CKRZ-FM','CKTP-FM','CKUJ-FM','CKUM-FM','CKUW-FM','CKWR-FM','CKXL-FM','CKXU-FM','CKZP-FM','KBIR-FM','KWE-FM','VEF315','VF2013','VF2149','VF2239','VF2281','VF2321','VF2434','VF2435','VF2436','VF2437','VF2438','VF2439','VF2440','VF2441','VF2442','VF2443','VF2444','VF2445','VF2446','VF2447']
    
    # publicradiomap=# select max(id) from broadcasters; => 3225
    (pacifica_callsigns + ca_community_callsigns).each do |callsign|
      puts "* #{callsign}"
      Broadcaster.create_from_callsign callsign
    end
    return false
  end
end