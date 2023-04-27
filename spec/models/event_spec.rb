require 'rails_helper'

RSpec.describe Event, type: :model do
  # ログインユーザーが"男性"又は"その他"の場合、女性限定イベントに参加できないこと
  describe  "non_woman_cannot_join?" do
    let (:user) { User.new(gender: gender) }
    let(:event) { Event.new }
    context "男性かつ女性限定イベントの場合" do
      let (:gender){ "man" }
      it "trueを返すこと" do
        allow(event).to receive(:only_woman?).and_return(true)
        expect(event.non_woman_cannot_join?(user)).to eq true
      end
    end
    context "その他かつ女性限定イベントの場合" do
      let (:gender){ "other" }
      it "trueを返すこと" do
        allow(event).to receive(:only_woman?).and_return(true)
        expect(event.non_woman_cannot_join?(user)).to eq true
      end
    end
  end
end
