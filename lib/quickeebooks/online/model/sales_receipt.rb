require "quickeebooks"
require 'quickeebooks/online/model/sales_receipt_line_item'
require "quickeebooks/online/model/meta_data"
require "quickeebooks/online/model/id"

module Quickeebooks
  module Online
    module Model
      class SalesReceipt < Quickeebooks::Online::Model::IntuitType
        # include ActiveModel::Validations
        include OnlineLineItemModelMethods

        # XML_NODE = "SalesReceipt"
        # REST_RESOURCE = "payment"

        # xml_convention :camelcase
        xml_accessor :id,         :from => 'Id',        :as => Quickeebooks::Online::Model::Id
        xml_accessor :sync_token, :from => 'SyncToken', :as => Integer
        xml_accessor :doc_number, :from => 'DocNumber', :as => Integer
        xml_accessor :subtotal,   :from => 'SubTotalAmt',  :as => Float
        xml_accessor :total,      :from => 'TotalAmt', :as => Float
        # xml_accessor :meta_data,  :from => 'MetaData',  :as => Quickeebooks::Online::Model::MetaData
        # xml_accessor :header,     :from => 'Header',    :as => Quickeebooks::Online::Model::PaymentHeader
        xml_accessor :line_items, :from => 'Line',      :as => [Quickeebooks::Online::Model::SalesReceiptLineItem]

      end
    end
  end
end