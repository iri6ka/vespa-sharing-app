module ApplicationHelper

    def select_alert_subclass(input)
        case input
        when 'notice'
            return 'info'
        when 'success'
            return 'success'
        when 'error'
            return 'danger'
        when 'alert'
            return 'warning'
        else
            return 'warning'
        end
    end
end
