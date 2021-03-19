connection: "kb-daas-dev"

# include all the views
include: "/views/**/*.view"

datagroup: test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_default_datagroup

explore: keyword_bank {}

explore: keyword_bank_nlp {
  join: keyword_bank_nlp__entities {
    view_label: "Keyword Bank Nlp: Entities"
    sql: LEFT JOIN UNNEST(${keyword_bank_nlp.entities}) as keyword_bank_nlp__entities ;;
    relationship: one_to_many
  }

  join: keyword_bank_nlp__sentiments {
    view_label: "Keyword Bank Nlp: Sentiments"
    sql: LEFT JOIN UNNEST(${keyword_bank_nlp.sentiments}) as keyword_bank_nlp__sentiments ;;
    relationship: one_to_many
  }
}

explore: keyword_bank_result {
  join: keyword_bank_result__ss {
    view_label: "Keyword Bank Result: Ss"
    sql: LEFT JOIN UNNEST(${keyword_bank_result.ss}) as keyword_bank_result__ss ;;
    relationship: one_to_many
  }

  join: keyword_bank_result__kse {
    view_label: "Keyword Bank Result: Kse"
    sql: LEFT JOIN UNNEST(${keyword_bank_result.kse}) as keyword_bank_result__kse ;;
    relationship: one_to_many
  }

  join: keyword_bank_result__kpe {
    view_label: "Keyword Bank Result: Kpe"
    sql: LEFT JOIN UNNEST(${keyword_bank_result.kpe}) as keyword_bank_result__kpe ;;
    relationship: one_to_many
  }

  join: keyword_bank_result__d2_c {
    view_label: "Keyword Bank Result: D2c"
    sql: LEFT JOIN UNNEST(${keyword_bank_result.d2_c}) as keyword_bank_result__d2_c ;;
    relationship: one_to_many
  }
}

explore: keyword_corona {}

explore: keyword_corona_result {
  join: keyword_corona_result__ss {
    view_label: "Keyword Corona Result: Ss"
    sql: LEFT JOIN UNNEST(${keyword_corona_result.ss}) as keyword_corona_result__ss ;;
    relationship: one_to_many
  }

  join: keyword_corona_result__kse {
    view_label: "Keyword Corona Result: Kse"
    sql: LEFT JOIN UNNEST(${keyword_corona_result.kse}) as keyword_corona_result__kse ;;
    relationship: one_to_many
  }

  join: keyword_corona_result__kpe {
    view_label: "Keyword Corona Result: Kpe"
    sql: LEFT JOIN UNNEST(${keyword_corona_result.kpe}) as keyword_corona_result__kpe ;;
    relationship: one_to_many
  }

  join: keyword_corona_result__d2_c {
    view_label: "Keyword Corona Result: D2c"
    sql: LEFT JOIN UNNEST(${keyword_corona_result.d2_c}) as keyword_corona_result__d2_c ;;
    relationship: one_to_many
  }
}
