module ApplicationHelper
    def decode(input)
        coder = HTMLEntities.new
        return coder.decode(input)
    end

    def user_cv_path
        return "/users/#{@user.id}/cvs/#{@cv.id}" unless @user.nil? || @cv.nil?
    end
end
