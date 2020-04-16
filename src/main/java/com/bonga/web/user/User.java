package com.bonga.web.user;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import com.bonga.web.media.Media;
import com.bonga.web.message.Message;
import com.bonga.web.model.relation.UserPostInteraction;
import com.bonga.web.poll.Poll;
import com.bonga.web.post.Post;
import com.bonga.web.role.Role;
import com.bonga.web.variables.Gender;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    protected Long id;

    @Column(length = 16, nullable = false)
    protected String username;
    @Column(name = "first_name", length = 40, nullable = false)
    protected String firstName;
    @Column(name = "middle_name", length = 40)
    protected String middleName;
    @Column(name = "last_name", length = 40, nullable = false)
    protected String lastName;
    @Column(length = 64, nullable = false)
    protected String email;

    @Column(length = 32, nullable = false)
    protected String password;
    @Column(name = "verification_code", length = 32)
    protected String verificationCode;

    @Transient
    protected String passwordConfirm;

    @Column(length = 1, nullable = false)
    protected Gender gender;
    @Column(name = "is_inactive", nullable = false)
    protected boolean isInactive;
    @Column(name = "is_verified")
    protected boolean isVerified;

    @Temporal(TemporalType.DATE)
    @Column(name = "birth_date")
    protected Date birthDate;

    @CreationTimestamp
    @Column(name = "joined_at", nullable = false)
    protected Date joinedAt;

    @UpdateTimestamp
    @Column(name = "last_active", nullable = false)
    protected Date lastActive;

    @OneToMany(mappedBy = "id")
    protected List<Post> posts = new ArrayList<>();

    @OneToMany(mappedBy = "id")
    protected List<Media> media = new ArrayList<>();

    @OneToMany(mappedBy = "id")
    protected List<Message> messages = new ArrayList<>();

    @OneToMany(mappedBy = "id")
    protected List<Poll> polls = new ArrayList<>();

    @ManyToMany
    protected Set<Role> roles;

    /*
     * TODO: Many-To-Many relationships implementation for the user
     */

    // users(N) -> posts(M): users interactions with posts;
    @OneToMany(mappedBy = "user")
    protected Set<UserPostInteraction> interactions = new HashSet<>();

    /**
     * @return the id
     */
    public Long getId() {
        return id;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return the middleName
     */
    public String getMiddleName() {
        return middleName;
    }

    /**
     * @param middleName the middleName to set
     */
    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the verificationCode
     */
    public String getVerificationCode() {
        return verificationCode;
    }

    /**
     * @param verificationCode the verificationCode to set
     */
    public void setVerificationCode(String verificationCode) {
        this.verificationCode = verificationCode;
    }

    /**
     * @return the passwordConfirm
     */
    public String getPasswordConfirm() {
        return passwordConfirm;
    }

    /**
     * @param passwordConfirm the passwordConfirm to set
     */
    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }

    /**
     * @return the gender
     */
    public Gender getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(Gender gender) {
        this.gender = gender;
    }

    /**
     * @return the isInactive
     */
    public boolean isInactive() {
        return isInactive;
    }

    /**
     * @param isInactive the isInactive to set
     */
    public void setInactive(boolean isInactive) {
        this.isInactive = isInactive;
    }

    /**
     * @return the isVerified
     */
    public boolean isVerified() {
        return isVerified;
    }

    /**
     * @param isVerified the isVerified to set
     */
    public void setVerified(boolean isVerified) {
        this.isVerified = isVerified;
    }

    /**
     * @return the birthDate
     */
    public Date getBirthDate() {
        return birthDate;
    }

    /**
     * @param birthDate the birthDate to set
     */
    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    /**
     * @return the joinedAt
     */
    public Date getJoinedAt() {
        return joinedAt;
    }

    /**
     * @param joinedAt the joinedAt to set
     */
    public void setJoinedAt(Date joinedAt) {
        this.joinedAt = joinedAt;
    }

    /**
     * @return the lastActive
     */
    public Date getLastActive() {
        return lastActive;
    }

    /**
     * @param lastActive the lastActive to set
     */
    public void setLastActive(Date lastActive) {
        this.lastActive = lastActive;
    }

    /**
     * @return the posts
     */
    public List<Post> getPosts() {
        return posts;
    }

    /**
     * @param posts the posts to set
     */
    public void setPosts(List<Post> posts) {
        this.posts = posts;
    }

    /**
     * @return the media
     */
    public List<Media> getMedia() {
        return media;
    }

    /**
     * @param media the media to set
     */
    public void setMedia(List<Media> media) {
        this.media = media;
    }

    /**
     * @return the messages
     */
    public List<Message> getMessages() {
        return messages;
    }

    /**
     * @param messages the messages to set
     */
    public void setMessages(List<Message> messages) {
        this.messages = messages;
    }

    /**
     * @return the polls
     */
    public List<Poll> getPolls() {
        return polls;
    }

    /**
     * @param polls the polls to set
     */
    public void setPolls(List<Poll> polls) {
        this.polls = polls;
    }

    /**
     * @return the roles
     */
    public Set<Role> getRoles() {
        return roles;
    }

    /**
     * @param roles the roles to set
     */
    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    /**
     * @return the interactions
     */
    public Set<UserPostInteraction> getInteractions() {
        return interactions;
    }

    /**
     * @param interactions the interactions to set
     */
    public void setInteractions(Set<UserPostInteraction> interactions) {
        this.interactions = interactions;
    }

}
