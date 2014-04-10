TEST_CRM = {
  :people => [
    {
      :id => 1,
      :first_name => "Bob",
      :last_name => "Smith",
      :employments =>
        [
          {
            :company_id => 1,
            :title => "Boss"
          }
        ]
    },
    {
      :id => 2,
      :first_name => "Jane",
      :last_name => "Doe",
      :employments =>
        [
          {
            :company_id => 0,
            :title => "Super Boss"
          }
        ]
    }
  ],
  :companies => [
    {
      :id => 0,
      :name => "ABC"
    },
    {
      :id => 1,
      :name => "IRS"
    }
  ]
}