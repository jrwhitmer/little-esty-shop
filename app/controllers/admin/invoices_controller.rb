class Admin::InvoicesController < ApplicationController
  def index
    @invoices = Invoice.all
  end

  def show
    @invoice = Invoice.find(params[:id])
    @invoice_customer = @invoice.customer
    @items = @invoice.items
    @invoice_items = @invoice.invoice_items
  end

  private

  # def invoice_params
  #   params.permit()
  # end
end
