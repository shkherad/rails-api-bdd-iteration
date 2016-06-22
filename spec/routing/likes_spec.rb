require 'rails_helper'

RSpec.describe 'routes for likes' do
  it 'routes GET /likes/:id to the likes#show action' do
    expect(get('/likes/1')).to route_to(
      controller: 'likes',
      action: 'show',
      id: '1'
    )
  end

  it 'routes DELETE /likes/:id to the likes#destroy action' do
    expect(delete('/likes/1')).to route_to(
      controller: 'likes',
      action: 'destroy',
      id: '1'
    )
  end
end
