class DashboardsController < ApplicationController
  def index
    @sales_last_12_months = Sale.last_12_months
                                .group("strftime('%m-%Y', created_at)")
                                .order(created_at: :asc)
                                .sum(:price)

    @q_sales_last_12_months = Sale.last_12_months
                              .group("strftime('%m-%Y', created_at)")
                              .order(created_at: :asc)
                              .count
    @sales_avg_last_12_months = Sale.last_12_months
                              .group("strftime('%m-%Y', created_at)")
                              .order(created_at: :asc)
                              .average(:price)
    @sales_by_origin_last_12_months = Sale.last_12_months.limit(10)
                                          .group(:origin)
                                          .count
    @sales_by_origin_last_6_months = Sale.last_6_months.limit(10)
                                      .group(:origin)
                                      .count
    @sales_by_origin_last_3_months = Sale.last_3_months.limit(10)
                                      .group(:origin)
                                      .count
    @sales_by_origin_last_month = Sale.last_month.limit(10)
                                      .group(:origin)
                                      .count
    @sales_by_blend_12_months = Sale.last_12_months.limit(10)
                                    .group(:blend_name)
                                    .count
    @sales_by_blend_6_months = Sale.last_6_months.limit(10)
                                    .group(:blend_name)
                                    .count
    @sales_by_blend_3_months = Sale.last_3_months.limit(10)
                                    .group(:blend_name)
                                    .count
    @sales_by_blend_month = Sale.last_month.limit(10)
                                .group(:blend_name)
                                .count


  end
end
