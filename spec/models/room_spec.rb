require 'rails_helper'

RSpec.describe Room, type: :model do
  describe '#create' do
    befored do
      @room = FactoryBot bulid(:room)
    end

    it "nameの値が存在すれば登録できること" do
       expect(@room).to be_valid?
    end

    it "nameが空では登録できないこと" do
      @room.name = nil
      @room.be_valid?
      expect(@room.errors.full_messages).to include("Name can't be blank")
    end
  end  
end
