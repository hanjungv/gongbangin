module FleasHelper
  def likeBtn(hasLike)
    if hasLike.nil?
        link_to 'Log IN!', new_user_session_path
    elsif hasLike
        link_to like_flea_path(@flea), method: :post do
          content_tag :i, nil, class: 'fa fa-thumbs-o-up', 'aria-hidden' => 'true'
        end
    else
        link_to dislike_flea_path(@flea), method: :post do
          content_tag :i, nil, class: 'fa fa-thumbs-o-down', 'aria-hidden' => 'true'
        end
      end
  end
end
