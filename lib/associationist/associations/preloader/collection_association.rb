module Associationist
  module Associations
    module Preloader
      class CollectionAssociation < ActiveRecord::Associations::Preloader::CollectionAssociation
        def associated_records_by_owner preloader
          reflection.config.preloader_proc.call(owners).map{|k, v| [k, v]}
        end

      end

    end
  end

end
