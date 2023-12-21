module ApplicationHelper

    # return base title if oage title is not present
    def full_title(page_title="")
        base_title = "Astral Motors"
        if page_title.blank?
            base_title
        else
            "#{page_title} | #{base_title}"
        end
    end
end
