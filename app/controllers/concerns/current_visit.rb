module CurrentVisit
  extend ActiveSupport::Concern

  private

  def set_visit
    @visit = Visit.current(session[:visit_id], session[:visit_uuid])
    if @visit.nil?
      @visit = Visit.new do |u|
        u.uuid = SecureRandom.uuid
        u.ip = request.remote_ip
        u.browser = request.user_agent
        u.device = request.env['mobvious.device_type']
      end
      @visit.save!
      session[:visit_id] = @visit.id
      session[:visit_uuid] = @visit.uuid
    end
  end

  def get_visit
    @visit = Visit.current(session[:visit_id], session[:visit_uuid])
  end

end