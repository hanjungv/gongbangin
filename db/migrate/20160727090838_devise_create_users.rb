class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ########################################################################################################
      #personal_information
      t.string :name, null: false, default: ""
      t.string :nickname, null: false, default: ""
      t.string :phone_number, null: false,  default: ""
      t.string :address, null:false, default:""
      #Level (master - planner - standby - seller, default : seller)
      t.string :level, default: "seller"
      #자기소개
      t.string :introduction, default: "안녕하세요!만나서 반가워요!"
      # tier (red-orange-yellow-green-blue-navy-purple-gray. purple is maker's default value)
      # planner는 별도의 티어가 필요할 것이라 생각됨
      t.string :tier, default: "gray"
      #score
      t.integer :score, default: 0

      t.string :skills, default: "없음"
      #사업자명, 사업자 번호(있는 경우만)
      t.string :brand, default:"없음"
      t.string :brand_number, default:"없음"
      #profile_image
      t.string :profile_image_url, default: ""
      #url
      t.string :facebook_id, default:""
      t.string :twitter_id, default:""
      t.string :instagram_id,default:""
      ########################################################################################################
      ## Confirmable
      # t.string   :confirmation_token©©
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
