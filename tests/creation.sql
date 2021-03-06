CREATE TABLE `player_daily_avg` (
  `iddailyplayer` int(11) NOT NULL AUTO_INCREMENT,
  `playerID` int(11) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  `blocks` float DEFAULT NULL,
  `points` float DEFAULT NULL,
  `steals` float DEFAULT NULL,
  `AST` float DEFAULT NULL,
  `turnovers` float DEFAULT NULL,
  `totalRebounds` float DEFAULT NULL,
  `tripleDouble` float DEFAULT NULL,
  `doubleDouble` float DEFAULT NULL,
  `3PM` float DEFAULT NULL,
  `oRebound` float DEFAULT NULL,
  `dRebound` float DEFAULT NULL,
  `minutes` float DEFAULT NULL,
  `FG` float DEFAULT NULL,
  `FGA` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `3PA` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `FTM` float DEFAULT NULL,
  `FTA` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `personalFouls` float DEFAULT NULL,
  `plusMinus` float DEFAULT NULL,
  `trueShootingP` float DEFAULT NULL,
  `eFG` float DEFAULT NULL,
  `freeThrowAttemptRate` float DEFAULT NULL,
  `3PointAttemptRate` float DEFAULT NULL,
  `oReboundP` float DEFAULT NULL,
  `dReboundP` float DEFAULT NULL,
  `totalReboundP` float DEFAULT NULL,
  `ASTP` float DEFAULT NULL,
  `STP` float DEFAULT NULL,
  `BLKP` float DEFAULT NULL,
  `turnoverP` float DEFAULT NULL,
  `USG` float DEFAULT NULL,
  `oRating` float DEFAULT NULL,
  `dRating` float DEFAULT NULL,
  PRIMARY KEY (`iddailyplayer`),
  KEY `playerDailyData_idx` (`playerID`),
  KEY `playerDailyDateID_idx` (`dateID`),
  CONSTRAINT `playerDailyDataPlayerID` FOREIGN KEY (`playerID`) REFERENCES `player_reference` (`playerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `playerDailyDateID` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=175399 DEFAULT CHARSET=latin1;

CREATE TABLE `team_daily_avg_performance` (
  `dailyAvgPerformanceID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `avgPointsAllowed` float DEFAULT NULL,
  `avgPointsScored` float DEFAULT NULL,
  `pace` float DEFAULT NULL,
  `effectiveFieldGoalPercent` float DEFAULT NULL,
  `turnoverPercent` float DEFAULT NULL,
  `offensiveReboundPercent` float DEFAULT NULL,
  `FT/FGA` float DEFAULT NULL,
  `FG` float DEFAULT NULL,
  `FGA` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `3P` float DEFAULT NULL,
  `3PA` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `FT` float DEFAULT NULL,
  `FTA` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `offensiveRebounds` float DEFAULT NULL,
  `defensiveRebounds` float DEFAULT NULL,
  `totalRebounds` float DEFAULT NULL,
  `assists` float DEFAULT NULL,
  `steals` float DEFAULT NULL,
  `blocks` float DEFAULT NULL,
  `turnovers` float DEFAULT NULL,
  `personalFouls` float DEFAULT NULL,
  `trueShootingPercent` float DEFAULT NULL,
  `3pointAttemptRate` float DEFAULT NULL,
  `freeThrowAttemptRate` float DEFAULT NULL,
  `defensiveReboundPercent` float DEFAULT NULL,
  `totalReboundPercent` float DEFAULT NULL,
  `assistPercent` float DEFAULT NULL,
  `stealPercent` float DEFAULT NULL,
  `blockPercent` float DEFAULT NULL,
  `points1Q` float DEFAULT NULL,
  `points2Q` float DEFAULT NULL,
  `points3Q` float DEFAULT NULL,
  `points4Q` float DEFAULT NULL,
  PRIMARY KEY (`dailyAvgPerformanceID`),
  KEY `dailyTeamPerformanceTeamID_idx` (`dailyTeamID`),
  KEY `dailyTeamPerformanceDateID_idx` (`dateID`),
  CONSTRAINT `dailyTeamPerformanceDateID` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `dailyTeamPerformanceTeamID` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10605 DEFAULT CHARSET=latin1;

CREATE TABLE `team_daily_avg_performance` (
  `dailyAvgPerformanceID` int(11) NOT NULL AUTO_INCREMENT,
  `dailyTeamID` int(11) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `losses` int(11) DEFAULT NULL,
  `ORT` float DEFAULT NULL,
  `DRT` float DEFAULT NULL,
  `avgPointsAllowed` float DEFAULT NULL,
  `avgPointsScored` float DEFAULT NULL,
  `pace` float DEFAULT NULL,
  `effectiveFieldGoalPercent` float DEFAULT NULL,
  `turnoverPercent` float DEFAULT NULL,
  `offensiveReboundPercent` float DEFAULT NULL,
  `FT/FGA` float DEFAULT NULL,
  `FG` float DEFAULT NULL,
  `FGA` float DEFAULT NULL,
  `FGP` float DEFAULT NULL,
  `3P` float DEFAULT NULL,
  `3PA` float DEFAULT NULL,
  `3PP` float DEFAULT NULL,
  `FT` float DEFAULT NULL,
  `FTA` float DEFAULT NULL,
  `FTP` float DEFAULT NULL,
  `offensiveRebounds` float DEFAULT NULL,
  `defensiveRebounds` float DEFAULT NULL,
  `totalRebounds` float DEFAULT NULL,
  `assists` float DEFAULT NULL,
  `steals` float DEFAULT NULL,
  `blocks` float DEFAULT NULL,
  `turnovers` float DEFAULT NULL,
  `personalFouls` float DEFAULT NULL,
  `trueShootingPercent` float DEFAULT NULL,
  `3pointAttemptRate` float DEFAULT NULL,
  `freeThrowAttemptRate` float DEFAULT NULL,
  `defensiveReboundPercent` float DEFAULT NULL,
  `totalReboundPercent` float DEFAULT NULL,
  `assistPercent` float DEFAULT NULL,
  `stealPercent` float DEFAULT NULL,
  `blockPercent` float DEFAULT NULL,
  `points1Q` float DEFAULT NULL,
  `points2Q` float DEFAULT NULL,
  `points3Q` float DEFAULT NULL,
  `points4Q` float DEFAULT NULL,
  PRIMARY KEY (`dailyAvgPerformanceID`),
  KEY `dailyTeamPerformanceTeamID_idx` (`dailyTeamID`),
  KEY `dailyTeamPerformanceDateID_idx` (`dateID`),
  CONSTRAINT `dailyTeamPerformanceDateID` FOREIGN KEY (`dateID`) REFERENCES `new_dates` (`iddates`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `dailyTeamPerformanceTeamID` FOREIGN KEY (`dailyTeamID`) REFERENCES `team_reference` (`teamID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10605 DEFAULT CHARSET=latin1;

CREATE TABLE `futures` (
  `idfeatures` int(11) NOT NULL AUTO_INCREMENT,
  `playerID` int(11) DEFAULT NULL,
  `dateID` int(11) DEFAULT NULL,
  `fanduel` int(11) DEFAULT NULL,
  `draftkings` int(11) DEFAULT NULL,
  `blocksDPA` float DEFAULT NULL,
  `pointsDPA` float DEFAULT NULL,
  `stealsDPA` float DEFAULT NULL,
  `AST_DPA` float DEFAULT NULL,
  `turnoversDPA` float DEFAULT NULL,
  `totalReboundsDPA` float DEFAULT NULL,
  `tripleDoubleDPA` float DEFAULT NULL,
  `doubleDoubleDPA` float DEFAULT NULL,
  `3PM_DPA` float DEFAULT NULL,
  `oReboundDPA` float DEFAULT NULL,
  `dReboundDPA` float DEFAULT NULL,
  `minutesDPA` float DEFAULT NULL,
  `FG_DPA` float DEFAULT NULL,
  `FGA_DPA` float DEFAULT NULL,
  `FGP_DPA` float DEFAULT NULL,
  `3PA_DPA` float DEFAULT NULL,
  `3PP_DPA` float DEFAULT NULL,
  `FTM_DPA` float DEFAULT NULL,
  `FTA_DPA` float DEFAULT NULL,
  `FTP_DPA` float DEFAULT NULL,
  `personalFoulsDPA` float DEFAULT NULL,
  `plusMinusDPA` float DEFAULT NULL,
  `trueShootingP_DPA` float DEFAULT NULL,
  `eFG_DPA` float DEFAULT NULL,
  `freeThrowAttemptRateDPA` float DEFAULT NULL,
  `3PointAttemptRateDPA` float DEFAULT NULL,
  `oReboundP_DPA` float DEFAULT NULL,
  `dReboundP_DPA` float DEFAULT NULL,
  `totalReboundP_DPA` float DEFAULT NULL,
  `ASTP_DPA` float DEFAULT NULL,
  `STP_DPA` float DEFAULT NULL,
  `BLKP_DPA` float DEFAULT NULL,
  `turnoverP_DPA` float DEFAULT NULL,
  `USG_DPA` float DEFAULT NULL,
  `oRatingDPA` float DEFAULT NULL,
  `dRatingDPA` float DEFAULT NULL,
  `blocksDPA_7` float DEFAULT NULL,
  `pointsDPA_7` float DEFAULT NULL,
  `stealsDPA_7` float DEFAULT NULL,
  `AST_DPA_7` float DEFAULT NULL,
  `turnoversDPA_7` float DEFAULT NULL,
  `totalReboundsDPA_7` float DEFAULT NULL,
  `tripleDoubleDPA_7` float DEFAULT NULL,
  `doubleDoubleDPA_7` float DEFAULT NULL,
  `3PM_DPA_7` float DEFAULT NULL,
  `oReboundDPA_7` float DEFAULT NULL,
  `dReboundDPA_7` float DEFAULT NULL,
  `minutesDPA_7` float DEFAULT NULL,
  `FG_DPA_7` float DEFAULT NULL,
  `FGA_DPA_7` float DEFAULT NULL,
  `FGP_DPA_7` float DEFAULT NULL,
  `3PA_DPA_7` float DEFAULT NULL,
  `3PP_DPA_7` float DEFAULT NULL,
  `FTM_DPA_7` float DEFAULT NULL,
  `FTA_DPA_7` float DEFAULT NULL,
  `FTP_DPA_7` float DEFAULT NULL,
  `personalFoulsDPA_7` float DEFAULT NULL,
  `plusMinusDPA_7` float DEFAULT NULL,
  `trueShootingP_DPA_7` float DEFAULT NULL,
  `eFG_DPA_7` float DEFAULT NULL,
  `freeThrowAttemptRateDPA_7` float DEFAULT NULL,
  `3PointAttemptRateDPA_7` float DEFAULT NULL,
  `oReboundP_DPA_7` float DEFAULT NULL,
  `dReboundP_DPA_7` float DEFAULT NULL,
  `totalReboundP_DPA_7` float DEFAULT NULL,
  `ASTP_DPA_7` float DEFAULT NULL,
  `STP_DPA_7` float DEFAULT NULL,
  `BLKP_DPA_7` float DEFAULT NULL,
  `turnoverP_DPA_7` float DEFAULT NULL,
  `USG_DPA_7` float DEFAULT NULL,
  `oRatingDPA_7` float DEFAULT NULL,
  `dRatingDPA_7` float DEFAULT NULL,
  `blocksDPA_21` float DEFAULT NULL,
  `pointsDPA_21` float DEFAULT NULL,
  `stealsDPA_21` float DEFAULT NULL,
  `AST_DPA_21` float DEFAULT NULL,
  `turnoversDPA_21` float DEFAULT NULL,
  `totalReboundsDPA_21` float DEFAULT NULL,
  `tripleDoubleDPA_21` float DEFAULT NULL,
  `doubleDoubleDPA_21` float DEFAULT NULL,
  `3PM_DPA_21` float DEFAULT NULL,
  `oReboundDPA_21` float DEFAULT NULL,
  `dReboundDPA_21` float DEFAULT NULL,
  `minutesDPA_21` float DEFAULT NULL,
  `FG_DPA_21` float DEFAULT NULL,
  `FGA_DPA_21` float DEFAULT NULL,
  `FGP_DPA_21` float DEFAULT NULL,
  `3PA_DPA_21` float DEFAULT NULL,
  `3PP_DPA_21` float DEFAULT NULL,
  `FTM_DPA_21` float DEFAULT NULL,
  `FTA_DPA_21` float DEFAULT NULL,
  `FTP_DPA_21` float DEFAULT NULL,
  `personalFoulsDPA_21` float DEFAULT NULL,
  `plusMinusDPA_21` float DEFAULT NULL,
  `trueShootingP_DPA_21` float DEFAULT NULL,
  `eFG_DPA_21` float DEFAULT NULL,
  `freeThrowAttemptRateDPA_21` float DEFAULT NULL,
  `3PointAttemptRateDPA_21` float DEFAULT NULL,
  `oReboundP_DPA_21` float DEFAULT NULL,
  `dReboundP_DPA_21` float DEFAULT NULL,
  `totalReboundP_DPA_21` float DEFAULT NULL,
  `ASTP_DPA_21` float DEFAULT NULL,
  `STP_DPA_21` float DEFAULT NULL,
  `BLKP_DPA_21` float DEFAULT NULL,
  `turnoverP_DPA_21` float DEFAULT NULL,
  `USG_DPA_21` float DEFAULT NULL,
  `oRatingDPA_21` float DEFAULT NULL,
  `dRatingDPA_21` float DEFAULT NULL,
  `winsTeam` float DEFAULT NULL,
  `winsTeam7` float DEFAULT NULL,
  `winsTeam21` float DEFAULT NULL,
  `lossesTeam` float DEFAULT NULL,
  `lossesTeam7` float DEFAULT NULL,
  `lossesTeam21` float DEFAULT NULL,
  `ortTeam` float DEFAULT NULL,
  `ortTeam7` float DEFAULT NULL,
  `ortTeam21` float DEFAULT NULL,
  `drtTeam` float DEFAULT NULL,
  `drtTeam7` float DEFAULT NULL,
  `drtTeam21` float DEFAULT NULL,
  `avgPointsAllowedTeam` float DEFAULT NULL,
  `avgPointsAllowedTeam7` float DEFAULT NULL,
  `avgPointsAllowed21` float DEFAULT NULL,
  `avgPointsScoredTeam` float DEFAULT NULL,
  `avgPointsScoredTeam7` float DEFAULT NULL,
  `avgPointsScoredTeam21` float DEFAULT NULL,
  `paceTeam` float DEFAULT NULL,
  `paceTeam7` float DEFAULT NULL,
  `paceTeam21` float DEFAULT NULL,
  `efgpTeam` float DEFAULT NULL,
  `efgpTeam7` float DEFAULT NULL,
  `efgpTeam21` float DEFAULT NULL,
  `turnoverpTeam` float DEFAULT NULL,
  `turnoverpTeam7` float DEFAULT NULL,
  `turnoverpTeam21` float DEFAULT NULL,
  `orpTeam` float DEFAULT NULL,
  `orpTeam7` float DEFAULT NULL,
  `orpTeam21` float DEFAULT NULL,
  `ftperfgaTeam` float DEFAULT NULL,
  `ftperfgaTeam7` float DEFAULT NULL,
  `ftperfgaTeam21` float DEFAULT NULL,
  `fgTeam` float DEFAULT NULL,
  `fgTeam7` float DEFAULT NULL,
  `fgTeam21` float DEFAULT NULL,
  `fgaTeam` float DEFAULT NULL,
  `fgaTeam7` float DEFAULT NULL,
  `fgaTeam21` float DEFAULT NULL,
  `fgpTeam` float DEFAULT NULL,
  `fgpTeam7` float DEFAULT NULL,
  `fgpTeam21` float DEFAULT NULL,
  `3pTeam` float DEFAULT NULL,
  `3pTeam7` float DEFAULT NULL,
  `3pTeam21` float DEFAULT NULL,
  `3paTeam` float DEFAULT NULL,
  `3paTeam7` float DEFAULT NULL,
  `3paTeam21` float DEFAULT NULL,
  `3ppTeam` float DEFAULT NULL,
  `3ppTeam7` float DEFAULT NULL,
  `3ppTeam21` float DEFAULT NULL,
  `ftTeam` float DEFAULT NULL,
  `ftTeam7` float DEFAULT NULL,
  `ftTeam21` float DEFAULT NULL,
  `ftaTeam` float DEFAULT NULL,
  `ftaTeam7` float DEFAULT NULL,
  `ftaTeam21` float DEFAULT NULL,
  `ftpTeam` float DEFAULT NULL,
  `ftpTeam7` float DEFAULT NULL,
  `ftpTeam21` float DEFAULT NULL,
  `oRebTeam` float DEFAULT NULL,
  `oRebTeam7` float DEFAULT NULL,
  `oRebTeam21` float DEFAULT NULL,
  `dRebTeam` float DEFAULT NULL,
  `dRebTeam7` float DEFAULT NULL,
  `dRebTeam21` float DEFAULT NULL,
  `tRebTeam` float DEFAULT NULL,
  `tRebTeam7` float DEFAULT NULL,
  `tRebTeam21` float DEFAULT NULL,
  `astTeam` float DEFAULT NULL,
  `astTeam7` float DEFAULT NULL,
  `astTeam21` float DEFAULT NULL,
  `stlTeam` float DEFAULT NULL,
  `stlTeam7` float DEFAULT NULL,
  `stlTeam21` float DEFAULT NULL,
  `blocksTeam` float DEFAULT NULL,
  `blocksTeam7` float DEFAULT NULL,
  `blocksTeam21` float DEFAULT NULL,
  `turnoversTeam` float DEFAULT NULL,
  `turnoversTeam7` float DEFAULT NULL,
  `turnoversTeam21` float DEFAULT NULL,
  `pfTeam` float DEFAULT NULL,
  `pfTeam7` float DEFAULT NULL,
  `pfTeam21` float DEFAULT NULL,
  `tspTeam` float DEFAULT NULL,
  `tspTeam7` float DEFAULT NULL,
  `tspTeam21` float DEFAULT NULL,
  `3parTeam` float DEFAULT NULL,
  `3parTeam7` float DEFAULT NULL,
  `3parTeam21` float DEFAULT NULL,
  `ftarTeam` float DEFAULT NULL,
  `ftarTeam7` float DEFAULT NULL,
  `ftarTeam21` float DEFAULT NULL,
  `drpTeam` float DEFAULT NULL,
  `drpTeam7` float DEFAULT NULL,
  `drpTeam21` float DEFAULT NULL,
  `trpTeam` float DEFAULT NULL,
  `trpTeam7` float DEFAULT NULL,
  `trpTeam21` float DEFAULT NULL,
  `astpTeam` float DEFAULT NULL,
  `astpTeam7` float DEFAULT NULL,
  `astpTeam21` float DEFAULT NULL,
  `stlpTeam` float DEFAULT NULL,
  `stlpTeam7` float DEFAULT NULL,
  `stlpTeam21` float DEFAULT NULL,
  `blkpTeam` float DEFAULT NULL,
  `blkpTeam7` float DEFAULT NULL,
  `blkpTeam21` float DEFAULT NULL,
  `points1qTeam` float DEFAULT NULL,
  `points1qTeam7` float DEFAULT NULL,
  `points1qTeam21` float DEFAULT NULL,
  `points2qTeam` float DEFAULT NULL,
  `points2qTeam7` float DEFAULT NULL,
  `points2qTeam21` float DEFAULT NULL,
  `points3qTeam` float DEFAULT NULL,
  `points3qTeam7` float DEFAULT NULL,
  `points3qTeam21` float DEFAULT NULL,
  `points4qTeam` float DEFAULT NULL,
  `points4qTeam7` float DEFAULT NULL,
  `points4qTeam21` float DEFAULT NULL,
  `winsOppTeam` float DEFAULT NULL,
  `winsOppTeam7` float DEFAULT NULL,
  `winsOppTeam21` float DEFAULT NULL,
  `lossesOppTeam` float DEFAULT NULL,
  `lossesOppTeam7` float DEFAULT NULL,
  `lossesOppTeam21` float DEFAULT NULL,
  `ortOppTeam` float DEFAULT NULL,
  `ortOppTeam7` float DEFAULT NULL,
  `ortOppTeam21` float DEFAULT NULL,
  `drtOppTeam` float DEFAULT NULL,
  `drtOppTeam7` float DEFAULT NULL,
  `drtOppTeam21` float DEFAULT NULL,
  `avgPointsAllowedOppTeam` float DEFAULT NULL,
  `avgPointsAllowedOppTeam7` float DEFAULT NULL,
  `avgPointsAllowedOpp21` float DEFAULT NULL,
  `avgPointsScoredOppTeam` float DEFAULT NULL,
  `avgPointsScoredOppTeam7` float DEFAULT NULL,
  `avgPointsScoredOppTeam21` float DEFAULT NULL,
  `paceOppTeam` float DEFAULT NULL,
  `paceOppTeam7` float DEFAULT NULL,
  `paceOppTeam21` float DEFAULT NULL,
  `efgpOppTeam` float DEFAULT NULL,
  `efgpOppTeam7` float DEFAULT NULL,
  `efgpOppTeam21` float DEFAULT NULL,
  `turnoverpOppTeam` float DEFAULT NULL,
  `turnoverpOppTeam7` float DEFAULT NULL,
  `turnoverpOppTeam21` float DEFAULT NULL,
  `orpOppTeam` float DEFAULT NULL,
  `orpOppTeam7` float DEFAULT NULL,
  `orpOppTeam21` float DEFAULT NULL,
  `ftperfgaOppTeam` float DEFAULT NULL,
  `ftperfgaOppTeam7` float DEFAULT NULL,
  `ftperfgaOppTeam21` float DEFAULT NULL,
  `fgOppTeam` float DEFAULT NULL,
  `fgOppTeam7` float DEFAULT NULL,
  `fgOppTeam21` float DEFAULT NULL,
  `fgaOppTeam` float DEFAULT NULL,
  `fgaOppTeam7` float DEFAULT NULL,
  `fgaOppTeam21` float DEFAULT NULL,
  `fgpOppTeam` float DEFAULT NULL,
  `fgpOppTeam7` float DEFAULT NULL,
  `fgpOppTeam21` float DEFAULT NULL,
  `3pOppTeam` float DEFAULT NULL,
  `3pOppTeam7` float DEFAULT NULL,
  `3pOppTeam21` float DEFAULT NULL,
  `3paOppTeam` float DEFAULT NULL,
  `3paOppTeam7` float DEFAULT NULL,
  `3paOppTeam21` float DEFAULT NULL,
  `3ppOppTeam` float DEFAULT NULL,
  `3ppOppTeam7` float DEFAULT NULL,
  `3ppOppTeam21` float DEFAULT NULL,
  `ftOppTeam` float DEFAULT NULL,
  `ftOppTeam7` float DEFAULT NULL,
  `ftOppTeam21` float DEFAULT NULL,
  `ftaOppTeam` float DEFAULT NULL,
  `ftaOppTeam7` float DEFAULT NULL,
  `ftaOppTeam21` float DEFAULT NULL,
  `ftpOppTeam` float DEFAULT NULL,
  `ftpOppTeam7` float DEFAULT NULL,
  `ftpOppTeam21` float DEFAULT NULL,
  `oRebOppTeam` float DEFAULT NULL,
  `oRebOppTeam7` float DEFAULT NULL,
  `oRebOppTeam21` float DEFAULT NULL,
  `dRebOppTeam` float DEFAULT NULL,
  `dRebOppTeam7` float DEFAULT NULL,
  `dRebOppTeam21` float DEFAULT NULL,
  `tRebOppTeam` float DEFAULT NULL,
  `tRebOppTeam7` float DEFAULT NULL,
  `tRebOppTeam21` float DEFAULT NULL,
  `astOppTeam` float DEFAULT NULL,
  `astOppTeam7` float DEFAULT NULL,
  `astOppTeam21` float DEFAULT NULL,
  `stlOppTeam` float DEFAULT NULL,
  `stlOppTeam7` float DEFAULT NULL,
  `stlOppTeam21` float DEFAULT NULL,
  `blocksOppTeam` float DEFAULT NULL,
  `blocksOppTeam7` float DEFAULT NULL,
  `blocksOppTeam21` float DEFAULT NULL,
  `turnoversOppTeam` float DEFAULT NULL,
  `turnoversOppTeam7` float DEFAULT NULL,
  `turnoversOppTeam21` float DEFAULT NULL,
  `pfOppTeam` float DEFAULT NULL,
  `pfOppTeam7` float DEFAULT NULL,
  `pfOppTeam21` float DEFAULT NULL,
  `tspOppTeam` float DEFAULT NULL,
  `tspOppTeam7` float DEFAULT NULL,
  `tspOppTeam21` float DEFAULT NULL,
  `3parOppTeam` float DEFAULT NULL,
  `3parOppTeam7` float DEFAULT NULL,
  `3parOppTeam21` float DEFAULT NULL,
  `ftarOppTeam` float DEFAULT NULL,
  `ftarOppTeam7` float DEFAULT NULL,
  `ftarOppTeam21` float DEFAULT NULL,
  `drpOppTeam` float DEFAULT NULL,
  `drpOppTeam7` float DEFAULT NULL,
  `drpOppTeam21` float DEFAULT NULL,
  `trpOppTeam` float DEFAULT NULL,
  `trpOppTeam7` float DEFAULT NULL,
  `trpOppTeam21` float DEFAULT NULL,
  `astpOppTeam` float DEFAULT NULL,
  `astpOppTeam7` float DEFAULT NULL,
  `astpOppTeam21` float DEFAULT NULL,
  `stlpOppTeam` float DEFAULT NULL,
  `stlpOppTeam7` float DEFAULT NULL,
  `stlpOppTeam21` float DEFAULT NULL,
  `blkpOppTeam` float DEFAULT NULL,
  `blkpOppTeam7` float DEFAULT NULL,
  `blkpOppTeam21` float DEFAULT NULL,
  `points1qOppTeam` float DEFAULT NULL,
  `points1qOppTeam7` float DEFAULT NULL,
  `points1qOppTeam21` float DEFAULT NULL,
  `points2qOppTeam` float DEFAULT NULL,
  `points2qOppTeam7` float DEFAULT NULL,
  `points2qOppTeam21` float DEFAULT NULL,
  `points3qOppTeam` float DEFAULT NULL,
  `points3qOppTeam7` float DEFAULT NULL,
  `points3qOppTeam21` float DEFAULT NULL,
  `points4qOppTeam` float DEFAULT NULL,
  `points4qOppTeam7` float DEFAULT NULL,
  `points4qOppTeam21` float DEFAULT NULL,
  `blocksTvP` float DEFAULT NULL,
  `pointsTvP` float DEFAULT NULL,
  `stealsTvP` float DEFAULT NULL,
  `assistsTvP` float DEFAULT NULL,
  `turnoversTvP` float DEFAULT NULL,
  `tReboundsTvP` float DEFAULT NULL,
  `dddTvP` float DEFAULT NULL,
  `ddTvP` float DEFAULT NULL,
  `3pmTvP` float DEFAULT NULL,
  `3paTvP` float DEFAULT NULL,
  `oReboundsTvP` float DEFAULT NULL,
  `dReboundsTvP` float DEFAULT NULL,
  `minutesTvP` float DEFAULT NULL,
  `fgTvP` float DEFAULT NULL,
  `fgaTvP` float DEFAULT NULL,
  `ftTvP` float DEFAULT NULL,
  `ftaTvP` float DEFAULT NULL,
  `bpmTvP` float DEFAULT NULL,
  `ppmTvP` float DEFAULT NULL,
  `spmTvP` float DEFAULT NULL,
  `apmTvP` float DEFAULT NULL,
  `tpmTvP` float DEFAULT NULL,
  `dddpgTvP` float DEFAULT NULL,
  `ddpgTvP` float DEFAULT NULL,
  `3ppTvP` float DEFAULT NULL,
  `orpmTvP` float DEFAULT NULL,
  `drpmTvP` float DEFAULT NULL,
  `fgpTvP` float DEFAULT NULL,
  `ftpTvP` float DEFAULT NULL,
  `usgTvP` float DEFAULT NULL,
  `ortTvP` float DEFAULT NULL,
  `drtTvP` float DEFAULT NULL,
  `tsTvP` float DEFAULT NULL,
  `efgTvP` float DEFAULT NULL,
  `blocksTvP7` float DEFAULT NULL,
  `pointsTvP7` float DEFAULT NULL,
  `stealsTvP7` float DEFAULT NULL,
  `assistsTvP7` float DEFAULT NULL,
  `turnoversTvP7` float DEFAULT NULL,
  `tReboundsTvP7` float DEFAULT NULL,
  `dddTvP7` float DEFAULT NULL,
  `ddTvP7` float DEFAULT NULL,
  `3pmTvP7` float DEFAULT NULL,
  `3paTvP7` float DEFAULT NULL,
  `oReboundsTvP7` float DEFAULT NULL,
  `dReboundsTvP7` float DEFAULT NULL,
  `minutesTvP7` float DEFAULT NULL,
  `fgTvP7` float DEFAULT NULL,
  `fgaTvP7` float DEFAULT NULL,
  `ftTvP7` float DEFAULT NULL,
  `ftaTvP7` float DEFAULT NULL,
  `bpmTvP7` float DEFAULT NULL,
  `ppmTvP7` float DEFAULT NULL,
  `spmTvP7` float DEFAULT NULL,
  `apmTvP7` float DEFAULT NULL,
  `tpmTvP7` float DEFAULT NULL,
  `dddpgTvP7` float DEFAULT NULL,
  `ddpgTvP7` float DEFAULT NULL,
  `3ppTvP7` float DEFAULT NULL,
  `orpmTvP7` float DEFAULT NULL,
  `drpmTvP7` float DEFAULT NULL,
  `fgpTvP7` float DEFAULT NULL,
  `ftpTvP7` float DEFAULT NULL,
  `usgTvP7` float DEFAULT NULL,
  `ortTvP7` float DEFAULT NULL,
  `drtTvP7` float DEFAULT NULL,
  `tsTvP7` float DEFAULT NULL,
  `efgTvP7` float DEFAULT NULL,
  `blocksTvP21` float DEFAULT NULL,
  `pointsTvP21` float DEFAULT NULL,
  `stealsTvP21` float DEFAULT NULL,
  `assistsTvP21` float DEFAULT NULL,
  `turnoversTvP21` float DEFAULT NULL,
  `tReboundsTvP21` float DEFAULT NULL,
  `dddTvP21` float DEFAULT NULL,
  `ddTvP21` float DEFAULT NULL,
  `3pmTvP21` float DEFAULT NULL,
  `3paTvP21` float DEFAULT NULL,
  `oReboundsTvP21` float DEFAULT NULL,
  `dReboundsTvP21` float DEFAULT NULL,
  `minutesTvP21` float DEFAULT NULL,
  `fgTvP21` float DEFAULT NULL,
  `fgaTvP21` float DEFAULT NULL,
  `ftTvP21` float DEFAULT NULL,
  `ftaTvP21` float DEFAULT NULL,
  `bpmTvP21` float DEFAULT NULL,
  `ppmTvP21` float DEFAULT NULL,
  `spmTvP21` float DEFAULT NULL,
  `apmTvP21` float DEFAULT NULL,
  `tpmTvP21` float DEFAULT NULL,
  `dddpgTvP21` float DEFAULT NULL,
  `ddpgTvP21` float DEFAULT NULL,
  `3ppTvP21` float DEFAULT NULL,
  `orpmTvP21` float DEFAULT NULL,
  `drpmTvP21` float DEFAULT NULL,
  `fgpTvP21` float DEFAULT NULL,
  `ftpTvP21` float DEFAULT NULL,
  `usgTvP21` float DEFAULT NULL,
  `ortTvP21` float DEFAULT NULL,
  `drtTvP21` float DEFAULT NULL,
  `tsTvP21` float DEFAULT NULL,
  `efgTvP21` float DEFAULT NULL,
  `projMinutes` float DEFAULT NULL,
  `fanduelPts` float DEFAULT NULL,
  `draftkingsPts` float DEFAULT NULL,
  PRIMARY KEY (`idfeatures`)
) ENGINE=InnoDB AUTO_INCREMENT=40694 DEFAULT CHARSET=latin1;

