view: keyword_corona_result {
  sql_table_name: `master_200729.keyword_corona_result`
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

  dimension: d2_c {
    hidden: yes
    sql: ${TABLE}.D2C ;;
  }

  dimension: docid {
    type: number
    value_format_name: id
    sql: ${TABLE}.DOCID ;;
  }

  dimension: kpe {
    hidden: yes
    sql: ${TABLE}.KPE ;;
  }

  dimension: kse {
    hidden: yes
    sql: ${TABLE}.KSE ;;
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

  dimension: response__err_msg {
    type: string
    sql: ${TABLE}.RESPONSE.err_msg ;;
    group_label: "Response"
    group_item_label: "Err Msg"
  }

  dimension: response__proc_time {
    type: number
    sql: ${TABLE}.RESPONSE.proc_time ;;
    group_label: "Response"
    group_item_label: "Proc Time"
  }

  dimension: response__status_code {
    type: number
    sql: ${TABLE}.RESPONSE.status_code ;;
    group_label: "Response"
    group_item_label: "Status Code"
  }

  dimension: s_name {
    type: string
    sql: ${TABLE}.S_NAME ;;
  }

  dimension: sb_name {
    type: string
    sql: ${TABLE}.SB_NAME ;;
  }

  dimension: ss {
    hidden: yes
    sql: ${TABLE}.SS ;;
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

view: keyword_corona_result__ss {
  dimension: keyword_corona_result__ss {
    type: string
    sql: keyword_corona_result__ss ;;
  }
}

view: keyword_corona_result__kse {
  dimension: idx {
    type: number
    sql: ${TABLE}.idx ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }
}

view: keyword_corona_result__kpe {
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.keyword ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }
}

view: keyword_corona_result__d2_c {
  dimension: label {
    type: string
    sql: ${TABLE}.label ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }
}
