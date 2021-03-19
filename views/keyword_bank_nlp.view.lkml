view: keyword_bank_nlp {
  sql_table_name: `master_200729.keyword_bank_nlp`
    ;;

  dimension: channel {
    type: string
    sql: ${TABLE}.CHANNEL ;;
  }

  dimension_group: crawlstamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CRAWLSTAMP ;;
  }

  dimension: docid {
    type: number
    value_format_name: id
    sql: ${TABLE}.DOCID ;;
  }

  dimension: entities {
    hidden: yes
    sql: ${TABLE}.ENTITIES ;;
  }

  dimension_group: procstamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PROCSTAMP ;;
  }

  dimension: response__entities_proc_time {
    type: number
    sql: ${TABLE}.RESPONSE.entities_proc_time ;;
    group_label: "Response"
    group_item_label: "Entities Proc Time"
  }

  dimension: response__sentiment_proc_time {
    type: number
    sql: ${TABLE}.RESPONSE.sentiment_proc_time ;;
    group_label: "Response"
    group_item_label: "Sentiment Proc Time"
  }

  dimension: s_name {
    type: string
    sql: ${TABLE}.S_NAME ;;
  }

  dimension: sb_name {
    type: string
    sql: ${TABLE}.SB_NAME ;;
  }

  dimension: sentiment__magnitude {
    type: number
    sql: ${TABLE}.SENTIMENT.magnitude ;;
    group_label: "Sentiment"
    group_item_label: "Magnitude"
  }

  dimension: sentiment__score {
    type: number
    sql: ${TABLE}.SENTIMENT.score ;;
    group_label: "Sentiment"
    group_item_label: "Score"
  }

  dimension: sentiments {
    hidden: yes
    sql: ${TABLE}.SENTIMENTS ;;
  }

  dimension_group: writestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.WRITESTAMP ;;
  }

  measure: count {
    type: count
    drill_fields: [s_name, sb_name]
  }
}

view: keyword_bank_nlp__entities {
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: salience {
    type: number
    sql: ${TABLE}.salience ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: keyword_bank_nlp__sentiments {
  dimension: magnitude {
    type: number
    sql: ${TABLE}.magnitude ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}
