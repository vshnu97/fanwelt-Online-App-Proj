class Welcome {
  String? status;
  ResponseA? response;
  String? etag;
  String? modified;
  String? datetime;
  String? apiVersion;
  String? message;

  Welcome(
      {this.status,
      this.response,
      this.etag,
      this.modified,
      this.datetime,
      this.apiVersion,
      this.message
      });

  Welcome.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    response = json['response'] != null
        ? ResponseA.fromJson(json['response'])
        : null;
    etag = json['etag'];
    modified = json['modified'];
    datetime = json['datetime'];
    apiVersion = json['api_version'];
     message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (response != null) {
      data['response'] = response!.toJson();
    }
    data['etag'] = etag;
    data['modified'] = modified;
    data['datetime'] = datetime;
    data['api_version'] = apiVersion;
    return data;
  }
}

class ResponseA {
  int? matchId;
  String? title;
  String? shortTitle;
  String? subtitle;
  int? format;
  String? formatStr;
  int? status;
  String? statusStr;
  String? statusNote;
  String? verified;
  String? preSquad;
  String? oddsAvailable;
  int? gameState;
  String? gameStateStr;
  Competition? competition;
  Teama? teama;
  Teama? teamb;
  String? dateStart;
  String? dateEnd;
  int? timestampStart;
  int? timestampEnd;
  String? dateStartIst;
  String? dateEndIst;
  Venue? venue;
  String? umpires;
  String? referee;
  String? equation;
  String? live;
  String? result;
  int? resultType;
  String? winMargin;
  int? winningTeamId;
  int? commentary;
  int? wagon;
  int? latestInningNumber;
  String? presquadTime;
  String? verifyTime;
  Toss? toss;

  ResponseA(
      {this.matchId,
      this.title,
      this.shortTitle,
      this.subtitle,
      this.format,
      this.formatStr,
      this.status,
      this.statusStr,
      this.statusNote,
      this.verified,
      this.preSquad,
      this.oddsAvailable,
      this.gameState,
      this.gameStateStr,
      this.competition,
      this.teama,
      this.teamb,
      this.dateStart,
      this.dateEnd,
      this.timestampStart,
      this.timestampEnd,
      this.dateStartIst,
      this.dateEndIst,
      this.venue,
      this.umpires,
      this.referee,
      this.equation,
      this.live,
      this.result,
      this.resultType,
      this.winMargin,
      this.winningTeamId,
      this.commentary,
      this.wagon,
      this.latestInningNumber,
      this.presquadTime,
      this.verifyTime,
      this.toss});

  ResponseA.fromJson(Map<String, dynamic> json) {
    matchId = json['match_id'];
    title = json['title'];
    shortTitle = json['short_title'];
    subtitle = json['subtitle'];
    format = json['format'];
    formatStr = json['format_str'];
    status = json['status'];
    statusStr = json['status_str'];
    statusNote = json['status_note'];
    verified = json['verified'];
    preSquad = json['pre_squad'];
    oddsAvailable = json['odds_available'];
    gameState = json['game_state'];
    gameStateStr = json['game_state_str'];
    competition = json['competition'] != null
        ? Competition.fromJson(json['competition'])
        : null;
    teama = json['teama'] != null ? Teama.fromJson(json['teama']) : null;
    teamb = json['teamb'] != null ? Teama.fromJson(json['teamb']) : null;
    dateStart = json['date_start'];
    dateEnd = json['date_end'];
    timestampStart = json['timestamp_start'];
    timestampEnd = json['timestamp_end'];
    dateStartIst = json['date_start_ist'];
    dateEndIst = json['date_end_ist'];
    venue = json['venue'] != null ? Venue.fromJson(json['venue']) : null;
    umpires = json['umpires'];
    referee = json['referee'];
    equation = json['equation'];
    live = json['live'];
    result = json['result'];
    resultType = json['result_type'];
    winMargin = json['win_margin'];
    winningTeamId = json['winning_team_id'];
    commentary = json['commentary'];
    wagon = json['wagon'];
    latestInningNumber = json['latest_inning_number'];
    presquadTime = json['presquad_time'];
    verifyTime = json['verify_time'];
    toss = json['toss'] != null ? Toss.fromJson(json['toss']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['match_id'] = matchId;
    data['title'] = title;
    data['short_title'] = shortTitle;
    data['subtitle'] = subtitle;
    data['format'] = format;
    data['format_str'] = formatStr;
    data['status'] = status;
    data['status_str'] = statusStr;
    data['status_note'] = statusNote;
    data['verified'] = verified;
    data['pre_squad'] = preSquad;
    data['odds_available'] = oddsAvailable;
    data['game_state'] = gameState;
    data['game_state_str'] = gameStateStr;
    if (competition != null) {
      data['competition'] = competition!.toJson();
    }
    if (teama != null) {
      data['teama'] = teama!.toJson();
    }
    if (teamb != null) {
      data['teamb'] = teamb!.toJson();
    }
    data['date_start'] = dateStart;
    data['date_end'] = dateEnd;
    data['timestamp_start'] = timestampStart;
    data['timestamp_end'] = timestampEnd;
    data['date_start_ist'] = dateStartIst;
    data['date_end_ist'] = dateEndIst;
    if (venue != null) {
      data['venue'] = venue!.toJson();
    }
    data['umpires'] = umpires;
    data['referee'] = referee;
    data['equation'] = equation;
    data['live'] = live;
    data['result'] = result;
    data['result_type'] = resultType;
    data['win_margin'] = winMargin;
    data['winning_team_id'] = winningTeamId;
    data['commentary'] = commentary;
    data['wagon'] = wagon;
    data['latest_inning_number'] = latestInningNumber;
    data['presquad_time'] = presquadTime;
    data['verify_time'] = verifyTime;
    if (toss != null) {
      data['toss'] = toss!.toJson();
    }
    return data;
  }
}

class Competition {
  int? cid;
  String? title;
  String? abbr;
  String? type;
  String? category;
  String? matchFormat;
  String? status;
  String? season;
  String? datestart;
  String? dateend;
  String? totalMatches;
  String? totalRounds;
  String? totalTeams;
  String? country;

  Competition(
      {this.cid,
      this.title,
      this.abbr,
      this.type,
      this.category,
      this.matchFormat,
      this.status,
      this.season,
      this.datestart,
      this.dateend,
      this.totalMatches,
      this.totalRounds,
      this.totalTeams,
      this.country});

  Competition.fromJson(Map<String, dynamic> json) {
    cid = json['cid'];
    title = json['title'];
    abbr = json['abbr'];
    type = json['type'];
    category = json['category'];
    matchFormat = json['match_format'];
    status = json['status'];
    season = json['season'];
    datestart = json['datestart'];
    dateend = json['dateend'];
    totalMatches = json['total_matches'];
    totalRounds = json['total_rounds'];
    totalTeams = json['total_teams'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cid'] = cid;
    data['title'] = title;
    data['abbr'] = abbr;
    data['type'] = type;
    data['category'] = category;
    data['match_format'] = matchFormat;
    data['status'] = status;
    data['season'] = season;
    data['datestart'] = datestart;
    data['dateend'] = dateend;
    data['total_matches'] = totalMatches;
    data['total_rounds'] = totalRounds;
    data['total_teams'] = totalTeams;
    data['country'] = country;
    return data;
  }
}

class Teama {
  int? teamId;
  String? name;
  String? shortName;
  String? logoUrl;
  String? thumbUrl;
  String? scoresFull;
  String? scores;
  String? overs;

  Teama(
      {this.teamId,
      this.name,
      this.shortName,
      this.logoUrl,
      this.thumbUrl,
      this.scoresFull,
      this.scores,
      this.overs});

  Teama.fromJson(Map<String, dynamic> json) {
    teamId = json['team_id'];
    name = json['name'];
    shortName = json['short_name'];
    logoUrl = json['logo_url'];
    thumbUrl = json['thumb_url'];
    scoresFull = json['scores_full'];
    scores = json['scores'];
    overs = json['overs'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['team_id'] = teamId;
    data['name'] = name;
    data['short_name'] = shortName;
    data['logo_url'] = logoUrl;
    data['thumb_url'] = thumbUrl;
    data['scores_full'] = scoresFull;
    data['scores'] = scores;
    data['overs'] = overs;
    return data;
  }
}

class Venue {
  String? venueId;
  String? name;
  String? location;
  String? timezone;

  Venue({this.venueId, this.name, this.location, this.timezone});

  Venue.fromJson(Map<String, dynamic> json) {
    venueId = json['venue_id'];
    name = json['name'];
    location = json['location'];
    timezone = json['timezone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['venue_id'] = venueId;
    data['name'] = name;
    data['location'] = location;
    data['timezone'] = timezone;
    return data;
  }
}

class Toss {
  String? text;
  int? winner;
  int? decision;

  Toss({this.text, this.winner, this.decision});

  Toss.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    winner = json['winner'];
    decision = json['decision'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text'] = text;
    data['winner'] = winner;
    data['decision'] = decision;
    return data;
  }
}