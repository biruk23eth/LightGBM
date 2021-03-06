# Central location for parameter aliases.
# See https://lightgbm.readthedocs.io/en/latest/Parameters.html#core-parameters

# [description] List of respected parameter aliases specific to lgb.Dataset. Wrapped in a function to
#               take advantage of lazy evaluation (so it doesn't matter what order
#               R sources files during installation).
# [return] A named list, where each key is a parameter relevant to lgb.DataSet and each value is a character
#          vector of corresponding aliases.
.DATASET_PARAMETERS <- function() {
    return(list(
        "bin_construct_sample_cnt" = c(
            "bin_construct_sample_cnt"
            , "subsample_for_bin"
        )
        , "categorical_feature" = c(
            "categorical_feature"
            , "cat_feature"
            , "categorical_column"
            , "cat_column"
        )
        , "seed" = c(
            "seed"
            , "data_random_seed"
            , "feature_fraction_seed"
        )
        , "enable_bundle" = c(
            "enable_bundle"
            , "is_endable_bundle"
            , "bundle"
        )
        , "enable_sparse" = c(
            "enable_sparse"
            , "is_sparse"
            , "sparse"
        )
        , "feature_pre_filter" = "feature_pre_filter"
        , "forcedbins_filename" = "forcedbins_filename"
        , "group_column" = c(
            "group_column"
            , "group_id"
            , "query_column"
            , "query"
            , "query_id"
        )
        , "header" = c(
            "header"
            , "has_header"
        )
        , "ignore_column" = c(
            "ignore_column"
            , "ignore_feature"
            , "blacklist"
        )
        , "label_column" = c(
            "label_column"
            , "label"
        )
        , "max_bin" = "max_bin"
        , "max_bin_by_feature" = "max_bin_by_feature"
        , "pre_partition" = c(
            "pre_parition"
            , "is_pre_partition"
        )
        , "two_round" = c(
            "two_round"
            , "two_round_loading"
            , "use_two_round_loading"
        )
        , "use_missing" = "use_missing"
        , "weight_column" = c(
            "weight_column"
            , "weight"
        )
        , "zero_as_missing" = "zero_as_missing"
    ))
}

# [description] List of respected parameter aliases. Wrapped in a function to take advantage of
#               lazy evaluation (so it doesn't matter what order R sources files during installation).
# [return] A named list, where each key is a main LightGBM parameter and each value is a character
#          vector of corresponding aliases.
.PARAMETER_ALIASES <- function() {
    learning_params <- list(
        "boosting" = c(
            "boosting"
            , "boost"
            , "boosting_type"
        )
        , "early_stopping_round" = c(
            "early_stopping_round"
            , "early_stopping_rounds"
            , "early_stopping"
            , "n_iter_no_change"
        )
        , "num_iterations" = c(
            "num_iterations"
            , "num_iteration"
            , "n_iter"
            , "num_tree"
            , "num_trees"
            , "num_round"
            , "num_rounds"
            , "num_boost_round"
            , "n_estimators"
        )
    )
    return(c(learning_params, .DATASET_PARAMETERS()))
}
