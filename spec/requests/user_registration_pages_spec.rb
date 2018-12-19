describe "User registrarion page" do
  describe "edit" do
    let(:user) { FactoryGirl.create(:user) }
    before do
      login user
    end

    describe "redirects to user's edit page after the user edits his account" do
      before do
        visit edit_user_registration_path
        clock_button "変更を保存"
      end
      it { should have_title( "アカウント情報編集" ) }
    end
  end
end
