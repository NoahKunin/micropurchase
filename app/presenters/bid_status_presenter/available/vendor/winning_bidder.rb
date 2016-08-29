class BidStatusPresenter::Available::Vendor::WinningBidder < BidStatusPresenter::Base
  def header
    I18n.t('auctions.show.status.winning_bidder.header')
  end

  def body
    I18n.t(
      'auctions.show.status.winning_bidder.body',
      winning_bid_amount: winning_bid_amount,
      winning_bid_time: winning_bid_time
    )
  end
end
