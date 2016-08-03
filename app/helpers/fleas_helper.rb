module FleasHelper
  def likeBtn(hasLike)
    if hasLike.nil?
      content_tag :h3 do
        link_to '로그인해 주세요.', new_user_session_path
      end
    elsif hasLike
      content_tag :h3 do
        link_to like_flea_path(@flea), method: :post do
          content_tag :i, nil, class: 'fa fa-thumbs-o-up', 'aria-hidden' => 'true'
        end
      end
    else
      content_tag :h3 do
        link_to dislike_flea_path(@flea), method: :post do
          content_tag :i, nil, class: 'fa fa-thumbs-o-down', 'aria-hidden' => 'true'
        end
      end
    end
  end
end
